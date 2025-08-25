#!/usr/bin/env python3

import os
import re
import yaml

def fix_metadata_order(filepath):
    """Fix the metadata field order for a person file"""
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    if not content.startswith('---'):
        return False
    
    # Split content into front matter and body
    parts = content.split('---', 2)
    if len(parts) < 3:
        return False
    
    front_matter = parts[1].strip()
    body = parts[2].strip()
    
    # Parse existing front matter
    try:
        data = yaml.safe_load(front_matter) or {}
    except yaml.YAMLError as e:
        print(f"YAML error in {filepath}: {e}")
        return False
    
    # Check if this file has devcon0 field (only process converted files)
    if 'devcon0' not in data:
        return False
    
    # Create ordered dictionary with desired field order
    ordered_data = {}
    
    # Add fields in the desired order
    field_order = ['title', 'description', 'photo', 'start', 'end', 'devcon0']
    
    for field in field_order:
        if field in data:
            ordered_data[field] = data[field]
    
    # Add any remaining fields that weren't in our order
    for key, value in data.items():
        if key not in ordered_data:
            ordered_data[key] = value
    
    # Manually construct the YAML to maintain order and formatting
    yaml_lines = []
    for key, value in ordered_data.items():
        if isinstance(value, str):
            # Quote strings that need quoting
            if value.isdigit() or value in ['true', 'false', 'null'] or ':' in value or value.startswith('"'):
                yaml_lines.append(f'{key}: "{value}"')
            else:
                yaml_lines.append(f'{key}: {value}')
        else:
            yaml_lines.append(f'{key}: {value}')
    
    new_front_matter = '\n'.join(yaml_lines)
    new_content = f"---\n{new_front_matter}\n---\n\n{body}\n"
    
    # Write back to file
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    print(f"✓ Fixed metadata order for {os.path.basename(filepath)}")
    return True

def main():
    people_dir = "_people"
    fixed = 0
    
    # List of people with devcon0 fields that need metadata order fixed
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
            if fix_metadata_order(filepath):
                fixed += 1
        else:
            print(f"File not found: {filepath}")
    
    print(f"\n✅ Fixed metadata order for {fixed} people files")

if __name__ == "__main__":
    main()
