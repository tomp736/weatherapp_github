data "github_user" "current" {
  username = "tomp736"
}

data "github_repository" "repo" {
  full_name = "tomp736/weatherapp-infra"
}

resource "github_repository_environment" "repo_environment" {
  environment = "example"
  repository  = data.github_repository.repo.name

  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}