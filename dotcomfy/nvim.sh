#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
if [ -n "$ZSH_VERSION" ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> "$HOME/.zshrc"
    echo 'Adding path to .zshrc'
elif [ -n "$BASH_VERSION" ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> "$HOME/.bashrc"
    echo 'Adding path to .bashrc'
elif [ -n "$env.NU_VERSION" ]; then
    echo 'path add "/opt/nvim-linux-x86_64/bin"' >> "$HOME/.config/nushell/env.nu"
    echo 'Adding path to .config/nushell/env.nu'
else
    echo 'No idea what shell is on this system'
fi
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> "$HOME/.zshrc"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
nvim --version
echo 'Done with nvim.sh'
