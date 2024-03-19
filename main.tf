provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

resource "null_resource" "import_key_pair" {
  provisioner "local-exec" {
    command = <<-EOT
      aws ec2 import-key-pair \
        --key-name AwsKeyName \
        --public-key-material var.publickey
    EOT
  }
}

variable "publickey" {
  description = "ssh key for ec2 bastion instance"
  type        = string
}

