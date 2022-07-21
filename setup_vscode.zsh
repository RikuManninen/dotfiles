#!/usr/bin/env zsh

echo "\n<<< Starting Visual Studio Code Setup >>>\n"

pkglist=(
  bradlc.vscode-tailwindcss
  capaj.vscode-exports-autocomplete
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  moalamri.inline-fold
  ms-python.python
  ms-python.vscode-pylance
  ms-toolsai.jupyter
  ms-toolsai.jupyter-keymap
  ms-toolsai.jupyter-renderers
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done