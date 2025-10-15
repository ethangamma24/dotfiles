#!/bin/bash

mkdir ~/.config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux source ~/.config/tmux/tmux.conf
echo -----------------------------------
echo MAKE SURE TO INSTALL TMUX PLUGINS
echo BY OPENING ~/.config/tmux/tmux.conf
echo AND PRESSING `prefix + I`
echo -----------------------------------
