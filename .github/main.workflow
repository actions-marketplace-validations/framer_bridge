workflow "Run checks" {
  on = "push"
  resolves = ["Shellcheck", "Dockerfilelint"]
}

action "Shellcheck" {
  uses = "actions/bin/shellcheck@master"
  args = "entrypoint.sh"
}

action "Dockerfilelint" {
  uses = "docker://replicated/dockerfilelint"
  args = ["Dockerfile"]
}
