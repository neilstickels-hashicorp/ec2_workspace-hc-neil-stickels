  # Create an EC2 Instance
  resource "aws_instance" "ec2_workspace" {
  ami                         = data.aws_ami.ubuntu20.id
  instance_type               = var.instance_type
  tags = {
    Name = "helped-loon-instance"
  }
  }
  
# Create a random pet
resource "random_pet" "random" {}

# Data Source to get the latest Ubuntu 20.04 AMI
data "aws_ami" "ubuntu20" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}
# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "tough-lark-bucket"
resource "aws_s3_bucket" "imported_bucket" {
  bucket              = "tough-lark-bucket"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags = {
    owner = "hc-neil-stickels"
  }
  tags_all = {
    customer = "hashicat-inc"
    owner    = "hc-neil-stickels"
  }
}
