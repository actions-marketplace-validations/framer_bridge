workflow "Build and Publish" {
  on = "push"
  resolves = "Publish"
}

action "Build" {
  uses = "./.github/framer"
  args = ["build"]
}

action "Publish Filter" {
  needs = ["Build"]
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Publish" {
  uses = "./.github/framer"
  args = ["publish", "--yes"]
  needs = ["Build", "Publish Filter"]
  secrets = ["FRAMER_TOKEN"]
}
