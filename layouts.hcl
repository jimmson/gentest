# Layout with terminal and instructions side by side
resource "layout" "main" {
  column {
    width = 60

    tab "terminal" {
      title  = "Terminal"
      target = resource.terminal.shell
      active = true
    }
  }

  column {
    width = 40
    instructions {}
  }
}

# Keep single panel for reference
resource "layout" "single_panel" {
  column {
    instructions {}
  }
}
