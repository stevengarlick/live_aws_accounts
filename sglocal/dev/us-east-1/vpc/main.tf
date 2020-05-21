module "vpc" {
  source = "git@github.com:stevengarlick/sg_terraform_modules.git"

  name = "dev_sg_terraform"
  cidr = "10.0.0.0/26"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.32/28", "10.0.0.48/28"]
  public_subnets  = ["10.0.0.0/28", "10.0.0.16/28"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = { 
        owner= "Steven_Garlick",
        department= "None",
        project= "terraform_poc",
        env= "dev"
  } 
}