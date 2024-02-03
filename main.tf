module "weatherapp" {
    source = "./repos/weatherapp"
}

module "weatherapp_infra" {
  source = "./repos/weatherapp_infra"
}