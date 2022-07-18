#!/usr/bin/env zsh

echo "\n<<< Starting Python Setup >>>\n"

# Python versions are managed with `pyenv`, which is in the Brewfile.
# See zshrc for PYENV_ROOT and rest of the configuration.

# install pyenv-install-latest
echo 'installing `pyenv-install-latest` for pyenv'
if [ -d "$PYENV_ROOT/plugins/pyenv-install-latest" ]; then
  echo 'plugin `pyenv-install-latest` is already installed'
else
  git clone https://github.com/momo-lab/pyenv-install-latest.git "$(pyenv root)"/plugins/pyenv-install-latest
fi

# install latest stable version of python
echo 'installing latest stable version of python'
pyenv install-latest

# upgrade pip
python -m pip install --upgrade pip