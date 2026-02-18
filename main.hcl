resource "lab" "main" {
  title       = "Getting Started with MongoDB"
  description = "Learn the fundamentals of working with MongoDB by creating a collection and inserting user documents. Gain hands-on experience with MongoDB's document model, understanding how to create databases, insert documents, and query data using the MongoDB shell (mongosh)."

  layout = resource.layout.main
  tags   = ["mongodb", "database", "beginner", "mongosh"]

  settings {
    theme = "modern_dark"

    timelimit {
      duration   = "30m"
      extend     = "10m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "15m"
      show_warning = true
    }
  }

  content {
    chapter "connect-and-create-database" {
      title = "Connect and Create a Database"

      page "intro-mongodb" {
        reference = resource.page.intro_mongodb
      }

      page "connecting-mongodb" {
        reference = resource.page.connecting_mongodb
      }

      page "creating-database" {
        reference = resource.page.creating_database
      }
    }
  }
}
