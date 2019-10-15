#!/bin/sh
tmux new-session -d -s work
tmux split-window -h
tmux attach-session -t work
