#!/usr/bin/env python3

import os
import re
import yaml

def parse_time_to_seconds(time_str):
    """Convert time formats like '23m41s', '21m', '2018' to seconds"""
    # Handle direct seconds (like Jeff Wilcke's 2018)
    if time_str.isdigit():
        return time_str
    
    # Handle formats like 23m41s, 21m, 30m37s, etc.
    seconds = 0
    
    # Extract minutes
    m_match = re.search(r'(\d+)m', time_str)
    if m_match:
        seconds += int(m_match.group(1)) * 60
    
    # Extract seconds
    s_match = re.search(r'(\d+)s', time_str)
    if s_match:
        seconds += int(s_match.group(1))
    
    return str(seconds)

def process_person_file(filepath):
    """Process a single person file to convert DEVCON0 section"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Check if file has DEVCON0 section
    if '## DEVCON0 self-intro' not in content:
        return False
    
    # Extract the DEVCON0 URL and time
    devcon0_match = re.search(r'\[DEVCON0\]\(https://youtu\.be/_BvvUlKDqp0\?(?:si=[^&]+&)?t=([^)]+)\)', content)
    if not devcon0_match:
        # Try alternative format
        devcon0_match = re.search(r'\[DEVCON0\]\(https://www\.youtube\.com/watch\?v=_BvvUlKDqp0\)', content)
        if devcon0_match:
            # No timestamp, skip this one
            print(f"Skipping {filepath} - no timestamp found")
            return False
        else:
            print(f"No DEVCON0 URL found in {filepath}")
            return False
    
    time_param = devcon0_match.group(1)
    seconds = parse_time_to_seconds(time_param)
    
    # Split content into front matter and body
    if content.startswith('---'):
        parts = content.split('---', 2)
        if len(parts) >= 3:
            front_matter = parts[1].strip()
            body = parts[2].strip()
            
            # Parse existing front matter
            try:
                data = yaml.safe_load(front_matter) or {}
            except yaml.YAMLError as e:
                print(f"YAML error in {filepath}: {e}")
                return False
            
            # Add devcon0 field
            data['devcon0'] = seconds
            
            # Remove DEVCON0 section from body
            # Remove the entire section including the heading and link
            body = re.sub(r'## DEVCON0 self-intro\s*\n\s*\n?- \[DEVCON0\].*?\n\s*\n?', '', body, flags=re.DOTALL)
            body = re.sub(r'## DEVCON0 self-intro\s*\n- \[DEVCON0\].*?\n\s*\n?', '', body, flags=re.DOTALL)
            
            # Clean up extra newlines
            body = re.sub(r'\n\n\n+', '\n\n', body).strip()
            
            # Reconstruct file
            new_front_matter = yaml.dump(data, default_flow_style=False, allow_unicode=True).strip()
            new_content = f"---\n{new_front_matter}\n---\n\n{body}\n"
            
            # Write back to file
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            
            print(f"✓ Converted {os.path.basename(filepath)}: devcon0 = {seconds} seconds")
            return True
    
    print(f"Could not parse front matter in {filepath}")
    return False

def main():
    people_dir = "_people"
    converted = 0
    
    # List of people with DEVCON0 sections (excluding vitalik who is already done)
    devcon0_people = [
        'gavin-wood.md', 'viktor-tron.md', 'joseph-lubin.md', 'heiko-hees.md',
        'brian-fabian-crain.md', 'christophe-jentzsch.md', 'konrad-feldmeier.md',
        'aeron-buchanan.md', 'stephan-tual.md', 'marek-kotewicz.md',
        'alex-van-de-sande.md', 'roman-mandeleil.md', 'joel-dietz.md',
        'henning-diedrich.md', 'joris-bontje.md', 'vlad-zamfir.md',
        'piotrek-janiuk.md', 'daniel-nagy.md', 'jutta-steiner.md',
        'lefteris-karapetsas.md', 'marian-oancea.md', 'ken-kappler.md',
        'arkadiy-paronyan.md', 'felix-lange.md', 'ian-meikle.md',
        'pawel-bylica.md', 'christian-vomel.md', 'sven-ehlert.md',
        'jeff-wilcke.md', 'christian-reitwiessner.md', 'ksenya-s.md',
        'vinay-gupta.md', 'yann-levreau.md', 'george-hallam.md',
        'alex-leverington.md', 'jason-colby.md', 'joseph-chow.md'
    ]
    
    for filename in devcon0_people:
        filepath = os.path.join(people_dir, filename)
        if os.path.exists(filepath):
            if process_person_file(filepath):
                converted += 1
        else:
            print(f"File not found: {filepath}")
    
    print(f"\n✅ Converted {converted} people to use devcon0 metadata field")

if __name__ == "__main__":
    main()
