workflow "Run checks" {
  on = "push"
  resolves = ["ShellCheck", "Dockerfilelint"]
}

action "ShellCheck" {
  uses = "actions/bin/shellcheck@master"
  args = "entrypoint.sh"
}

action "Dockerfilelint" {
  uses = "docker://replicated/dockerfilelint"
  args = ["Dockerfile"]
}
