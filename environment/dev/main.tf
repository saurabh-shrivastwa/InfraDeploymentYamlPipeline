module "resource_group" {
  source = "../../modules/resource_group"
  rgs    = var.rgs
}
module "virtual_network" {
  source     = "../../modules/virtual_network"
  vnets      = var.vnets
  depends_on = [module.resource_group]
}
module "subnet" {
  source     = "../../modules/subnet"
  subnets    = var.subnets
  depends_on = [module.virtual_network]
}

