# Set Variables
# Syntax highlighting for man pages using bat
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
# Change ZSH Options

# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa -laF --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias man=batman

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PATH="$PATH:$N_PREFIX/bin"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins
