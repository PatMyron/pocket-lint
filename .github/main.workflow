workflow "workflow" {
  on = "push"
  resolves = ["one"]
}

action "one" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"] # optional
}
