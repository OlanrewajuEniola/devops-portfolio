variable "aws_region" {
  description = "AWS region for Terraform resources"
  type        = string
  default     = "eu-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "terraform-project-02-instance"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name"
  type        = string
  default     = "docker-project-key"
}
