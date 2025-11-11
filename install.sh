#!/bin/bash

# install.sh - Setup script for EarlyDaysOfEthereum on Ubuntu 24.04 LTS
# This script installs all necessary dependencies and sets up the project

set -e  # Exit on any error

echo "=========================================="
echo "EarlyDaysOfEthereum Installation Script"
echo "Ubuntu 24.04 LTS"
echo "=========================================="
echo ""

# Check if running on Ubuntu 24.04
if [ ! -f /etc/os-release ]; then
    echo "Error: Cannot determine OS version"
    exit 1
fi

# Source the os-release file
source /etc/os-release

# Check for Ubuntu
if [ "$ID" != "ubuntu" ]; then
    echo "Error: This script is designed for Ubuntu only."
    echo "Detected OS: $NAME"
    exit 1
fi

# Check for version 24.04.x
if [[ ! "$VERSION_ID" =~ ^24\.04 ]]; then
    echo "Error: This script requires Ubuntu 24.04 LTS."
    echo "Detected version: Ubuntu $VERSION_ID"
    exit 1
fi

echo "Detected: Ubuntu $VERSION_ID ✓"

# Update package lists
echo "Step 1: Updating package lists..."
sudo apt-get update

# Install Ruby and development dependencies
echo ""
echo "Step 2: Installing Ruby and build dependencies..."
sudo apt-get install -y \
    ruby \
    ruby-dev \
    build-essential \
    zlib1g-dev \
    liblzma-dev \
    patch

# Install Bundler
echo ""
echo "Step 3: Installing Bundler..."
sudo gem install bundler

# Verify installations
echo ""
echo "Step 4: Verifying installations..."
echo "Ruby version: $(ruby -v)"
echo "Bundler version: $(bundle -v)"

# Install project dependencies
echo ""
echo "Step 5: Installing project dependencies with Bundler..."
bundle install

echo ""
echo "=========================================="
echo "Installation Complete!"
echo "=========================================="
echo ""
echo "You can now build and serve the site with:"
echo "  bundle exec jekyll serve"
echo ""
echo "Or build the site with:"
echo "  bundle exec jekyll build"
echo ""
