# Network for MongoDB lab environment
resource "network" "main" {
  subnet = "10.0.0.0/24"
}

# MongoDB container using official MongoDB 7.0 image
resource "container" "mongodb" {
  image {
    name = "mongo:7.0"
  }

  network {
    id      = resource.network.main.meta.id
    aliases = ["mongodb", "mongo"]
  }

  volume {
    source      = "scripts"
    destination = "/tmp/scripts"
  }

  resources {
    cpu    = 1000
    memory = 1024
  }

  environment = {
    TERM = "xterm-256color"
  }

  health_check {
    timeout = "60s"

    tcp {
      address = "localhost:27017"
    }
  }
}

# Terminal for MongoDB shell access
resource "terminal" "shell" {
  target            = resource.container.mongodb
  shell             = "/bin/bash"
  working_directory = "/root"
}
