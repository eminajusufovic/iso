variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ebs_size" {
  type    = number
  default = 10
}

variable "key_name" {
  description = "SSH key name to access the EC2 instance"
  type        = string
}
