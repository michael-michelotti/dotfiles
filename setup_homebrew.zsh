#!/usr/bin/env zsh

echo "\nStarting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install httpie
# brew install bat

# brew --cask install google-chrome
# brew --cask install visual-studio-code
# brew install --cask --no-quarantine alfred 
# test change from m2 air

brew bundle --verbose
