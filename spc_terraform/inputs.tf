variable "vpc_cidr" {
  type        = string
  description = "this is vpc cidr"
}
variable "subnet_names" {
  type        = string
  description = "these are subnet names"
}

variable "subnet_az" {
  type        = list(string)
  description = "these are az for subnets"
}
variable "public_key_path" {
  type        = string
  description = "this is public key"
}

variable "ubuntu_ami_id" {
  type        = string
  description = "this is ami id of vm"
}

variable "app_ec2_size" {
  type        = string
  description = "this is size of vm"
}
variable "appsecurity_group_config" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type       = string
      from_port  = string
      to_port    = string
      protocol   = string
      cidr_block = string
    }))
  })
  description = "this is app security group"
}
