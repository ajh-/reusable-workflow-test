terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  } backend s3 {}
}

provider "github" {
  owner = "ajh-"
  app_auth {
    id              = var.github_app_id
    installation_id = var.github_app_installation_id
  }
}

resource "github_actions_variable" "example_variable" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable_a"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_2" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable_b"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_3" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable_c"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_4" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable_d"
  value         = "this_is_a_test_value!"
}

resource "github_actions_variable" "example_variable_5" {
  repository    = "reusable-workflow-test"
  variable_name = "terraform_test_variable_e"
  value         = "this_is_a_test_value!"
}
