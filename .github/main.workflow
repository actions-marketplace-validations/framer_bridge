workflow "Run checks" {
  on = "push"
  resolves = ["Shellcheck", "Dockerfilelint"]
}

action "Shellcheck" {
  uses = "actions/bin/shellcheck@master"
  args = "publish/entrypoint.sh"
}

action "Dockerfilelint" {
  uses = "docker://replicated/dockerfilelint"
  args = ["publish/Dockerfile"]
}
