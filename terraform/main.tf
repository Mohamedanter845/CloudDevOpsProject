module "network" {
  source              = "./modules/network"
  project_name        = var.project_name
  vpc_cidr_block      = var.vpc_cidr_block
  public_subnet_cidr  = var.public_subnet_cidr
  public_subnet_az    = var.public_subnet_az
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_az   = var.private_subnet_az
}

module "server" {
  source        = "./modules/server"
  subnet_id     = module.network.public_subnet_id
  ami           = var.ami
  instance_type = var.instance_type
  ami_id        = var.ami_id
  key_name      = var.key_name
  vpc_id        = module.network.vpc_id

}
