#!/bin/sh
set -eu

# Check if user has connected to MongoDB with mongosh
# This checks if mongosh is currently running or if there's evidence of a recent connection

# Check if mongosh process is running
if pgrep -x "mongosh" > /dev/null 2>&1; then
  exit 0
fi

# Check if there's a mongosh history file (indicates user has used mongosh)
if [ -f "/root/.mongodb/mongosh/.mongosh_repl_history" ]; then
  exit 0
fi

# Check if there's a mongosh log file
if [ -f "/root/.mongodb/mongosh/mongosh.log" ]; then
  exit 0
fi

# Also check .mongoshrc.js or local_mongorc.js as indicators
if [ -d "/root/.mongodb/mongosh" ]; then
  exit 0
fi

exit 1
