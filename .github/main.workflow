workflow "publish-to-private-store" {
  resolves = ["yarn-publish"]
  on = "push"
}

action "yarn-publish" {
  uses = "./.github/registry"
  secrets = ["NPM_AUTH_TOKEN"]
}
