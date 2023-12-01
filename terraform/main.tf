terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "${var.AMI}"
  instance_type = "${var.EC2_INSTANCE_TYPE}"
  key_name               = "oms-base-image"
  monitoring             = false
  vpc_security_group_ids = ["sg-00db24f5e2d92db60"]
  subnet_id              = "subnet-0d02746ac07fdcd64"
  availability_zone      = "${var.az_zone}"
  iam_instance_profile   = "ec2-ecr"


root_block_device {
    volume_size           = "${var.EC2_ROOT_VOLUME_SIZE}"
    tags = {
      Name = var.INSTANCE_NAME
      ENV  = "PROD"
    }
  }

  tags = {
    Name = var.INSTANCE_NAME
  }
}
