locals {
  environments = toset([
    "development",
    "testing",
    "production"
  ])
}

resource "local_file" "web_config" {
  for_each = local.environments

  filename = "${path.module}/${each.key}.txt"
  content  = "Web Application Environment: ${each.key}"
}