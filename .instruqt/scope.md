# Scope: Getting Started with MongoDB - Creating a User Collection

## Intent

This lab teaches beginners the fundamentals of working with MongoDB by creating a collection and inserting user documents. Users will gain hands-on experience with MongoDB's document model, understanding how to create databases, insert documents, and query data using the MongoDB shell (mongosh).

## Products Covered

- MongoDB Community Edition - primary focus
- MongoDB Shell (mongosh) - primary tool for interaction

## Learning Objectives

- Connect to a MongoDB database using mongosh
- Create/switch to a database using the `use` command
- Insert a single document using `insertOne()`
- Insert multiple documents using `insertMany()`
- Query and verify documents using `find()` and `findOne()`

## Target Audience

- Skill level: Beginner
- Prerequisites: Basic command-line familiarity
- Assumed knowledge: Understanding of JSON data format

## Sandbox Requirements

- Container(s): Ubuntu with MongoDB Community Edition 7.0+ and mongosh pre-installed
- Network: Internal only (no external access needed)
- Cloud resources: None
- Additional tools: None

## Chapters

### Chapter 1: Connect and Create a Database

**Slug:** connect-and-create-database
**Goal:** Connect to MongoDB and create a new database for the application
**Pages:**
- Page 1.1: Introduction to MongoDB - explains document databases and MongoDB basics
- Page 1.2: Connecting to MongoDB - hands-on connecting with mongosh
- Page 1.3: Creating a Database - using the `use` command to create/switch databases
**Tasks:**
- Verify user connected to MongoDB using mongosh
- Verify user created/switched to the `myapp` database
**Time:** ~7 min

### Chapter 2: Insert User Documents

**Slug:** insert-user-documents
**Goal:** Insert single and multiple user documents into a collection
**Pages:**
- Page 2.1: Understanding Documents - explains MongoDB document structure and _id field
- Page 2.2: Insert a Single User - hands-on with insertOne()
- Page 2.3: Insert Multiple Users - hands-on with insertMany()
**Tasks:**
- Verify user created a document with insertOne() in the users collection
- Verify user inserted multiple documents with insertMany()
**Time:** ~8 min

### Chapter 3: Query User Data

**Slug:** query-user-data
**Goal:** Retrieve and verify the inserted user documents
**Pages:**
- Page 3.1: Querying Documents - explains find() and query operators
- Page 3.2: Find Your Users - hands-on with find(), findOne(), and countDocuments()
**Tasks:**
- Verify user can retrieve all documents from users collection
- Verify user can query a specific document by field value
**Time:** ~5 min
