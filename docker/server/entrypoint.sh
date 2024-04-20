#!/usr/bin/env sh

# Trap SIGTERM and SIGINT signals and forward them to the PHP server process
trap 'kill -TERM $PID' TERM INT

# Start PHP server in the background and save its PID
php -S 0.0.0.0:8000 -t ~/mixup/public &

# Save the PID of the PHP server process
PID=$!

# Wait for the PHP server process to finish
wait $PID
