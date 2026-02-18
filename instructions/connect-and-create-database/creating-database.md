# Creating a Database

In MongoDB, databases serve as containers for collections. Each application typically uses its own database to organize its data separately from other applications.

Unlike some database systems, MongoDB does not require you to explicitly create a database before using it. Instead, you simply switch to a database name, and MongoDB creates it when you first store data in it.

## The use Command

The `use` command switches your current database context. If the database does not exist, MongoDB prepares to create it once you add data.

```
use myapp
```

After running this command, your prompt changes to reflect the new database:

```
myapp>
```

This tells you that any commands you run will now operate on the `myapp` database.

## Database Naming Conventions

When naming your databases, keep these guidelines in mind:

- Names are case-sensitive (`MyApp` and `myapp` are different databases)
- Avoid special characters and spaces
- Keep names concise but descriptive
- Common patterns include lowercase names like `myapp`, `users_db`, or `productcatalog`

## Create Your Database

Now create a database named `myapp` for your application. Use the `use` command to switch to this database.

<instruqt-task id="create_database"></instruqt-task>

## Verifying the Database

After switching to your database, you can verify the change by checking the current database:

```
db
```

This command returns the name of the database you are currently using.

You might notice that `myapp` does not appear in the `show dbs` output yet. This is normal. MongoDB only persists a database to disk when it contains at least one collection with data. Your database exists in memory and will be saved when you insert your first document.

## What You Have Accomplished

In this chapter, you have:

- Learned what document databases are and how MongoDB structures data
- Connected to MongoDB using the mongosh shell
- Created a database named `myapp` using the `use` command

In the next chapter, you will add user documents to your database.
