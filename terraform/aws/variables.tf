variable "cluster_name" {
  description = "unique name for cluster"
  default = "berlioz-test"
}

variable "access_key" {
  description = "The aws access key."
  default = ""
}

variable "secret_key" {
  description = "The aws secret key."
  default = ""
}

variable "key_name" {
  description = "The aws ssh key name."
  default = "Apollo"
}

variable "ssl_certificate_arn" {
  description = "arn for ssl certificate"
  default = ""
}

variable "key_file" {
  description = "The ssh public key for using with the cloud provider."
  default = ""
}

variable "private_key_file" {
  description = "The ssh public key for using with the cloud provider."
  default = ""
}

variable "atlas_infrastructure" {
  description = "The Atlas infrastructure project to join."
  default = "capgemini/infrastructure"
}

variable "region" {
  description = "The AWS region to create resources in."
  default = "eu-west-1"
}

variable "public_subnet_availability_zone" {
  description = "Public availability zone."
  default = ""
}

variable "availability_zones" {
  description = "AWS availability zones list separated by ','"
  default = ""
}

variable "vpc_cidr_block" {
  description = "Cidr block for the VPC."
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR for public subnets separated by ','"
  default     = ""
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR for private subnets separated by ','"
  default     = ""
}

variable "slaves" {
  description = "The number of slaves."
  default = "1"
}

variable "masters" {
  description = "The number of masters."
  default = "3"
}

variable "slave_block_device" {
  description = "Block device for OSD."
  default = {
    volume_size = 30
  }
}

variable "elasticsearch_block_device" {
  description = "Block device for elasticsearch."
  default = {
    volume_size = 80
  }
}

variable "instance_type" {
  default = {
    master = "m3.medium"
    slave  = "m3.medium"
  }
}

variable "bastion_instance_type" {
  default = "t2.micro"
}

variable "atlas_artifact" {
  default = {
    master = "capgemini/apollo-ubuntu-14.04-amd64"
    slave  = "capgemini/apollo-ubuntu-14.04-amd64"
  }
}

variable "atlas_artifact_version" {
  default = {
    master = "25"
    slave  = "25"
  }
}

/* Remember to update the list every time when you build a new artifact on atlas */
variable "amis" {
  default = {
    ap-northeast-1 = "ami-ea0e9aea"
    ap-southeast-1 = "ami-00243152"
    ap-southeast-2 = "ami-07dc933d"
    eu-central-1 = "ami-62fcfc7f"
    eu-west-1 = "ami-23bb9954"
    sa-east-1 = "ami-bd74e1a0"
    us-east-1 = "ami-b13145d4"
    us-west-1 = "ami-95eb2ed1"
    us-west-2 = "ami-75584745"
  }
}
