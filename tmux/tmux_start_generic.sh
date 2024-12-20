#!/bin/bash

# Start a new tmux session named 'mysession' in detached mode
tmux new-session -s tmux_session -n neovim -d

# Create 'neovim' window and run nvim
tmux send-keys -t tmux_session:neovim "nvim" C-m
#make a horizontal split
#tmux split-window -t minishell:neovim -h

# Create 'compile' window
tmux new-window -t tmux_session -n compile
tmux send-keys -t tmux_session:compile "cd ~/Documents/42-git && clear" C-m

# Create 'tester' window
tmux new-window -t tmux_session -n tester
tmux send-keys -t tmux_session:tester "cd ~/Documents/42-git && clear" C-m

# Create 'neovim2' window
tmux new-window -t tmux_session -n testfiles
 tmux send-keys -t tmux_session:neovim2 "cd ~/Documents/42-git && clear" C-m

# Attach to the session
tmux attach-session -t minishell
