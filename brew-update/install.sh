brew update
brew upgrade
brew upgrade brew-cask
# Remove unused packages
brew cleanup
brew cask cleanup
# Create a temp file for quicker installed.sh checks
touch $TMPDIR/lastbrew.txt