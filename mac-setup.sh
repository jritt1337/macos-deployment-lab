#!/bin/zsh

echo "Starting Deployment..."

mkdir -p ~/Brewlab

cd ~/Brewlab

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not detected. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Configure shell environment
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    if ! command -v brew >/dev/null 2>&1; then
        echo "Homebrew installation failed."
        exit 1
    fi
    echo "Homebrew installed successfully"
fi

# Download latest Brewfile
echo "Downloading Brewfile..."
# Replace the URL with a link to your own Brewfile if you wish to use your own!
BREWFILE_URL="https://raw.githubusercontent.com/jritt1337/macos-deployment-lab/main/Brewfile"

if ! curl -L -f -o Brewfile "$BREWFILE_URL"; then
    echo "Brewfile download failed."
    exit 1
fi

echo "Brewfile downloaded!"

echo "Updating Homebrew..."
brew update

echo "Installing packages..."
brew bundle --file=./Brewfile

echo "Cleaning old files..."
brew cleanup

echo "Deployment complete!" 
