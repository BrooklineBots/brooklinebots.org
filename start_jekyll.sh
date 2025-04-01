#!/bin/bash

# Detect OS
OS="$(uname -s)"

# Define the default directory
TARGET_DIR="$HOME/Documents/GitHub/brooklinerobotics.org"

# Function to search for the directory on macOS
find_directory_mac() {
    echo "Searching for 'brooklinerobotics.org'..."
    FOUND_DIR=$(mdfind -onlyin "$HOME" "kMDItemFSName == 'brooklinerobotics.org'" | head -n 1)
    if [ -z "$FOUND_DIR" ]; then
        echo "Directory 'brooklinerobotics.org' not found. Exiting."
        exit 1
    fi
    echo "Found: $FOUND_DIR"
    TARGET_DIR="$FOUND_DIR"
}

# Set OS-specific commands
if [ "$OS" == "Darwin" ]; then
    echo "Running on macOS..."
    if [ ! -d "$TARGET_DIR" ]; then
        find_directory_mac
    fi
    OPEN_CMD="open"
elif [[ "$OS" == MINGW* || "$OS" == CYGWIN* || "$OS" == MSYS* ]]; then
    echo "Running on Windows..."
    TARGET_DIR="$USERPROFILE\\Documents\\GitHub\\brooklinerobotics.org"
    if [ ! -d "$TARGET_DIR" ]; then
        echo "Directory 'brooklinerobotics.org' not found. Exiting."
        exit 1
    fi
    OPEN_CMD="start"
else
    echo "Unsupported OS: $OS"
    exit 1
fi

# Navigate to the project directory
cd "$TARGET_DIR" || exit

echo "Cleaning up old build files..."
rm -rf _site .jekyll-cache

echo "Updating repository..."
git pull

# Set up Ruby environment
if [ "$OS" == "Darwin" ]; then
    echo "Setting Ruby version on macOS..."
    chruby ruby-3.4.1
else
    echo "Ensure Ruby 3.4.1 is installed and active on Windows."
fi

echo "Installing Ruby dependencies..."
bundle install

echo "Installing Bulma via npm..."
npm install bulma

echo "Starting Jekyll server..."
bundle exec jekyll serve --incremental &
JEKYLL_PID=$!

# Wait for server startup (adjust timing if needed)
sleep 3

echo "Opening site in default browser..."
$OPEN_CMD http://127.0.0.1:4000/

echo "Done! Press any key to exit and stop Jekyll."
read -n 1 -s

# Kill Jekyll when terminal session ends
echo "Stopping Jekyll server..."
kill $JEKYLL_PID

