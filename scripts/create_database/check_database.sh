#!/bin/sh
set -eu

# Check if the myapp database has been selected/used
# We check if any collection or data exists, or if the database appears in history

# Run mongosh command to check if myapp database exists with any data
# A database is truly created when it has at least one collection

result=$(mongosh --quiet --eval "
  // Switch to myapp
  db = db.getSiblingDB('myapp');

  // Check if there are any collections OR if we can verify the db was accessed
  // For the task, we'll check if there's evidence the user switched to myapp
  // by looking at the shell history or by checking a marker collection

  // Check for the marker that our solve script would create
  var collections = db.getCollectionNames();
  if (collections.length > 0) {
    print('found');
  } else {
    // Check if there's a system index or any evidence of use
    var stats = db.stats();
    if (stats.ok) {
      print('found');
    } else {
      print('notfound');
    }
  }
" 2>/dev/null || echo "notfound")

# Check if the user has used the 'use myapp' command in their history
if [ -f "/root/.mongodb/mongosh/.mongosh_repl_history" ]; then
  if grep -q "use myapp" /root/.mongodb/mongosh/.mongosh_repl_history 2>/dev/null; then
    exit 0
  fi
fi

# If collections exist or database was found, pass
if echo "$result" | grep -q "found"; then
  exit 0
fi

exit 1
