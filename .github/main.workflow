workflow "New workflow" {
  on = "push"
  resolves = ["Build image"]
}

action "Build image" {
  uses = "docker://docker/compose:1.23.2"
  args = "build"
}