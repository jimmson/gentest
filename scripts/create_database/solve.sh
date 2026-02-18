#!/bin/sh
set -eu

# Solve script: Create the myapp database by switching to it and creating a marker

# Add the command to history to simulate user action
mkdir -p /root/.mongodb/mongosh
echo "use myapp" >> /root/.mongodb/mongosh/.mongosh_repl_history

# Actually create the database by inserting a temporary document
# This ensures the database is persisted
mongosh --quiet --eval "
  db = db.getSiblingDB('myapp');
  // Create a system info collection to mark the database as created
  db.createCollection('_lab_init');
  db._lab_init.insertOne({ created: new Date(), purpose: 'lab initialization' });
" > /dev/null 2>&1 || true
