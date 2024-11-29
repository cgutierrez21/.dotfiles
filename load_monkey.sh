SESH="monkey_files"

tmux has-session -t $SESH 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESH -n "monkey_files"
    sleep 0.5

    tmux send-keys -t $SESH:monkey_files "cd ~/Programming/Rust/Projects/monkey_files && nvim ." C-m
    sleep 0.5

    tmux new-window -a -t $SESH -n "ratatui"
    sleep 0.5
    tmux send-keys -t $SESH:ratatui "cd ~/Programming/Rust/Testers/ratatui/learn_ratatui && nvim ." C-m
    sleep 0.5

    tmux select-window -t $SESH:monkey_files
fi

tmux attach-session -t $SESH
    
