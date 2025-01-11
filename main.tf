resource "aws_instance" "app_server" {
  ami           = "ami-07c5ecd8498c59db5"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
