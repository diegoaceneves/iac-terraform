data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Einstein*"]
  }

  owners = [var.aws_account_owner] # My Account ID
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance_type

  tags = {
    Name = "Einstein"
    CC = "01012521"
  }
}
