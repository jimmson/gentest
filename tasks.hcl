# Chapter 1: Connect and Create a Database - Tasks

resource "task" "connect_mongodb" {
  description     = "Connect to MongoDB using mongosh"
  success_message = "You are connected to MongoDB!"

  config {
    target  = resource.container.mongodb
    timeout = "30s"
  }

  condition "mongosh_connected" {
    description = "mongosh is connected to MongoDB"

    check {
      script          = "scripts/connect_mongodb/check_connected.sh"
      failure_message = "mongosh is not connected. Have you started the MongoDB shell with the mongosh command?"
    }

    solve {
      script = "scripts/connect_mongodb/solve.sh"
    }
  }
}

resource "task" "create_database" {
  description     = "Create a new database named myapp"
  success_message = "Database myapp is now active!"

  config {
    target  = resource.container.mongodb
    timeout = "30s"
  }

  condition "database_created" {
    description = "The myapp database is the current database"

    check {
      script          = "scripts/create_database/check_database.sh"
      failure_message = "The myapp database is not the current database. Have you used the 'use' command to switch to it?"
    }

    solve {
      script = "scripts/create_database/solve.sh"
    }
  }
}
