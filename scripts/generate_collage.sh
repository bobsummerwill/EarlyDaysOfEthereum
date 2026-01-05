#!/bin/bash
#
# Generate a 12x12 photo collage from the Early Days of Ethereum site images
# Creates a 3' x 3' print-ready collage at 300 DPI (10800x10800 pixels)
#
# Usage: ./generate_collage.sh [output_dir]
#
# Default output: ~/Downloads/EarlyDaysAllImages_fresh/
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SITE_DIR="$PROJECT_DIR/_site"
OUTPUT_DIR="${1:-$HOME/Downloads/EarlyDaysAllImages_fresh}"

echo "=== Early Days of Ethereum Collage Generator ==="
echo "Project dir: $PROJECT_DIR"
echo "Site dir: $SITE_DIR"
echo "Output dir: $OUTPUT_DIR"
echo ""

# Check prerequisites
if ! command -v convert &> /dev/null || ! command -v montage &> /dev/null; then
    echo "ERROR: ImageMagick is required. Install with: sudo apt install imagemagick"
    exit 1
fi

if [ ! -d "$SITE_DIR" ]; then
    echo "ERROR: _site directory not found. Run 'bundle exec jekyll build' first."
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR/collage_selection"

echo "Step 1: Copying all local images from _site..."
cd "$SITE_DIR"
find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.svg" -o -iname "*.webp" -o -iname "*.ico" -o -iname "*.avif" \) -exec cp --parents {} "$OUTPUT_DIR/" \;
LOCAL_COUNT=$(find "$OUTPUT_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) | wc -l)
echo "  Copied $LOCAL_COUNT local images"

echo ""
echo "Step 2: Extracting external image URLs from HTML..."
cd "$SITE_DIR"
grep -rohE '(src|href)="https?://[^"]+\.(jpg|jpeg|png|gif|svg|webp|avif|ico)[^"]*"' *.html **/*.html 2>/dev/null | \
    sed 's/^[^"]*"//;s/"$//' | sort -u > "$OUTPUT_DIR/external_urls.txt"
EXTERNAL_COUNT=$(wc -l < "$OUTPUT_DIR/external_urls.txt")
echo "  Found $EXTERNAL_COUNT external image URLs"

echo ""
echo "Step 3: Downloading external images..."
mkdir -p "$OUTPUT_DIR/external"
cd "$OUTPUT_DIR/external"
while IFS= read -r url; do
    filename=$(echo "$url" | sed 's|https\?://||; s|[/?=&]|_|g' | cut -c1-200)
    if [[ ! "$filename" =~ \.(jpg|jpeg|png|gif|svg|webp|avif|ico)$ ]]; then
        ext=$(echo "$url" | grep -oE '\.(jpg|jpeg|png|gif|svg|webp|avif|ico)' | head -1)
        filename="${filename}${ext}"
    fi
    if [ ! -f "$filename" ]; then
        curl -sL --max-time 30 -o "$filename" "$url" 2>/dev/null || echo "  Failed: $url"
    fi
done < "$OUTPUT_DIR/external_urls.txt"
DOWNLOADED=$(ls "$OUTPUT_DIR/external" 2>/dev/null | wc -l)
echo "  Downloaded $DOWNLOADED external images"

echo ""
echo "Step 4: Selecting 144 images for collage..."
cd "$OUTPUT_DIR"

# Build selection list:
# - All Taylor Gerring photos (historical/candid)
# - X.com/Twitter photos
# - Other personal photos
# - YouTube, Medium, Duncan, event photos
# - Archive.org (excluding the 2014/2015 headshot sets)
# - External non-headshot images

SELECTION_FILE=$(mktemp)

# Taylor Gerring photos (all)
find images/personal/taylor-gerring -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) 2>/dev/null >> "$SELECTION_FILE"

# X.com/Twitter historical photos
find images/x.com -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) 2>/dev/null >> "$SELECTION_FILE"

# Other personal photos (non-Taylor)
find images/personal -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) ! -path "*/taylor-gerring/*" 2>/dev/null >> "$SELECTION_FILE"

# YouTube, Medium, Duncan, bobsummerwill, imgur - event/historical photos
for dir in images/youtube.com images/medium.com images/duncan.co images/bobsummerwill.com images/imgur.com; do
    [ -d "$dir" ] && find "$dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) 2>/dev/null >> "$SELECTION_FILE"
done

# Archive.org (excluding the headshot sets)
find images/archive.org -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) \
    ! -path "*/ethereum.org/20140701165441/*" \
    ! -path "*/ethdev.com/20150315012946/*" 2>/dev/null >> "$SELECTION_FILE"

# External images (prefer event photos, youtube thumbnails, etc)
find external -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) 2>/dev/null >> "$SELECTION_FILE"

# Remove duplicates and shuffle, take 144
sort -u "$SELECTION_FILE" | shuf | head -144 > "$OUTPUT_DIR/final_selection.txt"
rm "$SELECTION_FILE"

# Copy selected images to collage folder
rm -rf "$OUTPUT_DIR/collage_selection"
mkdir -p "$OUTPUT_DIR/collage_selection"
counter=1
while IFS= read -r img; do
    if [ -f "$img" ]; then
        ext="${img##*.}"
        cp "$img" "$OUTPUT_DIR/collage_selection/$(printf '%03d' $counter).$ext"
        counter=$((counter + 1))
    fi
done < "$OUTPUT_DIR/final_selection.txt"
SELECTED=$((counter - 1))
echo "  Selected $SELECTED images"

echo ""
echo "Step 5: Creating 12x12 collage at 300 DPI..."
cd "$OUTPUT_DIR/collage_selection"

# Resize all images to 900x900 (for 10800x10800 total = 300 DPI at 3'x3')
mkdir -p resized
for f in *.jpg *.jpeg *.png *.webp; do
    [ -f "$f" ] && convert "$f" -resize 900x900^ -gravity center -extent 900x900 "resized/$f" 2>/dev/null
done

# Create 12 rows
cd resized
for row in {0..11}; do
    start=$((row * 12 + 1))
    files=""
    for i in $(seq $start $((start + 11))); do
        num=$(printf '%03d' $i)
        f=$(ls ${num}.* 2>/dev/null | head -1)
        [ -n "$f" ] && files="$files $f"
    done
    montage $files -tile 12x1 -geometry +0+0 -background black "../row_${row}.jpg"
done

# Combine rows into final collage
cd ..
convert row_0.jpg row_1.jpg row_2.jpg row_3.jpg row_4.jpg row_5.jpg \
        row_6.jpg row_7.jpg row_8.jpg row_9.jpg row_10.jpg row_11.jpg \
    -append \
    -density 300 \
    -units PixelsPerInch \
    "$OUTPUT_DIR/ethereum_early_days_collage.jpg"

# Clean up temporary files
rm -f row_*.jpg
rm -rf resized

echo ""
echo "=== Complete! ==="
echo ""
ls -lh "$OUTPUT_DIR/ethereum_early_days_collage.jpg"
identify "$OUTPUT_DIR/ethereum_early_days_collage.jpg"
echo ""
echo "Output: $OUTPUT_DIR/ethereum_early_days_collage.jpg"
echo "Print size: 3' x 3' at 300 DPI"
