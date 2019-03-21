# 👖Pocket Lint
![badge](https://action-badges.now.sh/PatMyron/pocket-lint)

## Setup
Add this to `.github/main.workflow` in your repository:
```hcl
workflow "Pocket Lint" {
  on = "push"
  resolves = "pocket-lint"
}

action "pocket-lint" {
  uses = "PatMyron/pocket-lint@master"
}
```
