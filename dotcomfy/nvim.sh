curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
if [ -n "$BASH_VERSION" ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> .bashrc
elif [ -n "$ZSH_VERSION" ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> .zshrc
else
    echo 'No idea what shell is on this system'
fi
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
echo 'Done with nvim.sh'
