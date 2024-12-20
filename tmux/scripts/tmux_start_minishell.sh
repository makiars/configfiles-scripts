
#!/bin/bash

# Start a new tmux session named 'mysession' in detached mode
tmux new-session -s minishell -n neovim -d

# Create 'neovim' window and run nvim
tmux send-keys -t minishell:neovim "nvim" C-m
#make a horizontal split
#tmux split-window -t minishell:neovim -h

# Create 'compile' window
tmux new-window -t minishell -n compile
tmux send-keys -t minishell:compile "cd ~/Documents/minishell && clear" C-m

# Create 'tester' window
tmux new-window -t minishell -n tester
tmux send-keys -t minishell:tester "cd ~/Documents/minishell && clear" C-m

# Create 'neovim2' window
tmux new-window -t minishell -n testfiles
# tmux send-keys -t minishell:neovim2 "nvim /path/to/file" C-m

# Attach to the session
tmux attach-session -t minishell
