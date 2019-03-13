workflow "Build and Publish" {
  on = "push"
  resolves = "Publish"
}

action "Build" {
  uses = "./.github/framer"
  args = ["build"]
}

action "Publish" {
  uses = "./.github/framer"
  args = ["publish", "--yes"]
  needs = ["Build"]
  secrets = ["FRAMER_TOKEN"]
}
