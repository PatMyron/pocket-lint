workflow "workflow" {
  on = "push"
  resolves = ["one"]
}

action "one" {
  uses = "./"
}
