#!/bin/bash

# Define the default directory
TARGET_DIR="$HOME/Documents/GitHub/brooklinebots.org"

# Function to search for the directory
find_directory() {
    echo "Searching for 'brooklinerobotics.org'..."
    FOUND_DIR=$(mdfind -onlyin "$HOME" "kMDItemFSName == 'brooklinebots.org'" | head -n 1)
    if [ -z "$FOUND_DIR" ]; then
        echo "Directory 'brooklinebots.org' not found. Exiting."
        exit 1
    fi
    echo "Found: $FOUND_DIR"
    TARGET_DIR="$FOUND_DIR"
}

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    find_directory
fi

# Navigate to the project directory
cd "$TARGET_DIR" || exit

echo "Cleaning up old build files..."
rm -rf _site .jekyll-cache

echo "Updating repository..."
git pull

echo "Setting Ruby version..."
chruby ruby-3.4.1

echo "Installing Ruby dependencies..."
bundle install

echo "Installing Bulma via npm..."
npm install bulma

echo "Starting Jekyll server..."
bundle exec jekyll serve --livereload --incremental --disable-disk-cache -w &
JEKYLL_PID=$!

echo "Done! Press any key to exit and stop Jekyll."
read -n 1 -s

# Kill Jekyll when terminal session ends
echo "Stopping Jekyll server..."
kill $JEKYLL_PID

