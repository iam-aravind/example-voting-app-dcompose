provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"  # Specify the name for your key pair
  public_key = file(var.publickey)  # Access the public key path from a variable
}

variable "publickey" {
  description = "ssh key for ec2 bastion instance"
  type        = string
}

