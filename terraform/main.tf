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
  app_auth {}
}

resource "github_actions_variable" "example_variable" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable"
  value         = "this_is_a_test_value"
}

resource "null_resource" "default" {
  provisioner "local-exec" {
    command = "echo 'Hello World'"
  }
}
