# Chapter 1: Connect and Create a Database - Pages

resource "page" "intro_mongodb" {
  title = "Introduction to MongoDB"
  file  = "instructions/connect-and-create-database/intro-mongodb.md"
}

resource "page" "connecting_mongodb" {
  title = "Connecting to MongoDB"
  file  = "instructions/connect-and-create-database/connecting-mongodb.md"

  activities = {
    "connect_mongodb" = resource.task.connect_mongodb
  }
}

resource "page" "creating_database" {
  title = "Creating a Database"
  file  = "instructions/connect-and-create-database/creating-database.md"

  activities = {
    "create_database" = resource.task.create_database
  }
}
