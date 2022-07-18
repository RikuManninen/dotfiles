#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/bin/zsh' | sudo tee -a '/etc/shells'

if [ "$SHELL" = '/bin/zsh' ]; then
  echo '$SHELL is already /bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/bin/zsh'
fi