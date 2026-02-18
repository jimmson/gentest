# Connecting to MongoDB

Before you can store or query data, you need to connect to a MongoDB server. The MongoDB Shell (mongosh) provides an interactive command-line interface for working with MongoDB.

When you connect to MongoDB, you establish a session with the database server. This session allows you to run commands, execute queries, and manage your data.

## Starting mongosh

In this lab environment, MongoDB is already installed and running. To connect, you use the `mongosh` command in the terminal.

When mongosh starts, it automatically connects to the MongoDB server running on the default port (27017) on localhost. You will see a prompt that looks like this:

```
test>
```

The word before the `>` indicates which database you are currently using. By default, mongosh connects to a database called `test`.

## Understanding the Connection

When mongosh connects successfully, you will see information about:

- The MongoDB server version
- The mongosh version
- The current database name

This confirmation tells you that the connection is established and you are ready to interact with MongoDB.

## Connect to MongoDB

Open the Terminal tab on the left side of the screen. In the terminal, start the MongoDB Shell to connect to the database server.

<instruqt-task id="connect_mongodb"></instruqt-task>

Once connected, you have full access to the MongoDB query language. You can create databases, insert documents, and run queries.

## Exploring the Shell

After connecting, try running a few commands to explore the environment:

- `db` - Shows the current database name
- `show dbs` - Lists all databases on the server
- `help` - Displays available commands and help topics

The mongosh prompt accepts JavaScript expressions and MongoDB commands, making it a powerful tool for database interaction and scripting.
