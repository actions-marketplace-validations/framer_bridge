workflow "Publish" {
  resolves = ["Publish Framer Package"]
  on = "push"
}

action "Publish Framer Package" {
  uses = "./.github/framer"
  secrets = ["FRAMER_TOKEN"]
}
