terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "ajh-"
  app_auth {
    installation_id = var.github_app_installation_id
  }
}

resource "github_actions_variable" "example_variable" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable2" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable-2"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable3" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable-3"
  value         = "this_is_a_test_value!"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
