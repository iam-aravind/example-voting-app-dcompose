provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

resource "aws_key_pair" "tf-key-pair" {
key_name = "tf-key-pair"
public_key = var.publickey
}

variable "publickey" {
  description = "ssh key for ec2 bastion instance"
  type        = string
}

