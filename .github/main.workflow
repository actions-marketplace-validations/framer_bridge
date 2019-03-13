workflow "Build and Publish" {
  on = "push"
  resolves = "Publish"
}

action "Build" {
  uses = "./.github/framer"
  args = ["build", "--yes"]
}

action "Publish" {
  uses = "./.github/framer"
  args = ["publish", "--yes"]
  requires = ["Build"]
  secrets = ["FRAMER_TOKEN"]
}
