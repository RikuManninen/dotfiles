# Set Variables
# Syntax highlighting for man pages using bat
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export DOTFILES="$HOME/.dotfiles"
export HOMEBREW_BUNDLE_FILE="$DOTFILES/Brewfile"
export PYENV_VERSION='3.10.6'
# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa -laF --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias man=batman
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias reload!='. ~/.zshrc'
alias up="cd ../"


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# add .n
export PATH="$N_PREFIX/bin:$PATH"
# pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

function update-mac() {
  brew update && brew upgrade
}

# Install all .pkg files from the current folder to /Applications 
# (or whatever target folder is configured in the package):
function install-pkgs() {
  for f in *.pkg; do
    sudo installer -verbose -pkg "$f" -target /
  done
}

# Use ZSH Plugins
source <(antibody init)
antibody bundle < "$DOTFILES/antibody_plugins"
