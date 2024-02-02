variable "github_token" {
 type = string
}

variable "github_owner" {
 type = string
}

variable "author" {
 type = string
}

variable "repo_suffix" {
  type = string
  default = "totally-useless-repo"
}

variable "iterations" {
  type = map(string)
  default = {
    "1st" = "first",
    "2nd" = "second",
    "3rd" = "third"
  }
}
