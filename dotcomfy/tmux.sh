#!/bin/bash

mkdir ~/.config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux source ~/.config/tmux/tmux.conf
git clone https://github.com/tmux-plugins/tmux-continuum ~/.config/tmux/plugins/tmux-continuum
git clone https://github.com/27medkamal/tmux-session-wizard ~/.config/tmux/plugins/tmux-session-wizard
echo -----------------------------------
echo MAKE SURE TO INSTALL TMUX PLUGINS
echo BY OPENING ~/.config/tmux/tmux.conf
echo AND PRESSING `prefix + I`
echo -----------------------------------
