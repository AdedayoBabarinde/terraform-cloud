variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "secret_key" {} 
variable "access_key" {}
variable "subnet_id" {
variable "security_group_ids" {
type    = string
  default = "ami-0c55b159cbfafe1f0"
}

resource "aws_instance" "terraform-cloud-demo-server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "example-instance"
  }
}
