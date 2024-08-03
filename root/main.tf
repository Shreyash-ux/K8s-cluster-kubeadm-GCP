provider "google" {
  project = var.project
  region  = var.region
}


module "vpc" {
  source  = "../modules/vpc"
  project = var.project
}

module "subnets" {
  source  = "../modules/subnets"
  network = module.vpc.vpc_name

}
module "firewalls" {
  source  = "../modules/firewalls"
  network = module.vpc.vpc_name
}

module "vm" {
  source = "../modules/vm"
  vpc    = module.vpc.vpc_name
  workertags = module.firewalls.worker
  mastertags = module.firewalls.master
  subnetwork = module.subnets.subnets
}
