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
  variable_name = "terraform_test_variable-a"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_2" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable-b"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_3" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable-c"
  value         = "this_is_a_test_value!"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
