provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance""elite_forces" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count = 3

  tags = {
   Name="${var.tag}-${count.index + 1}"
  }
}
