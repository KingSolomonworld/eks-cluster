data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket  = "bootcamp32-dev-95"
    region  = "us-west-2"
    key     = "vpc/terraform.tfstate"
    encrypt = true
  }
}
