read -p "Delete local postgreql databases (y/n)?" CONT
if [ "$CONT" == "y" ]; then
  # unload postgres
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
  brew uninstall postgres
  # Remove old databases
  rm -rf /usr/local/var/postgres
  brew install postgres
  # Create new databases
  initdb /usr/local/var/postgres -E utf8
  mkdir -p $HOME/Library/LaunchAgents
  # Create symlink to launch agents
  ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
  # Load said launch agent now
  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
  sleep 1
else
  echo "Exiting.  Databases left untouched.";
fi