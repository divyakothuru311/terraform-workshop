vpc_cidr     = "10.10.0.0/16"
subnet_names = "app"
subnet_az    = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
public_key_path = "~/.ssh/id_rsa.pub"
app_ec2_size  = "t2.micro"
ubuntu_ami_id = "ami-0f5ee92e2d63afc18"

appsecurity_group_config = {
  name        = "appsg"
  description = "this is appsg"
  rules = [{
    type       = "ingress"
    from_port  = 8080
    to_port    = 8080
    protocol   = "Tcp"
    cidr_block = "0.0.0.0/0"
    },
    {
      type       = "ingress"
      from_port  = 22
      to_port    = 22
      protocol   = "Tcp"
      cidr_block = "0.0.0.0/0"
    },
    {
      type       = "egress"
      from_port  = 0
      to_port    = 65535
      protocol   = "-1"
      cidr_block = "0.0.0.0/0"
    }
  ]
}
