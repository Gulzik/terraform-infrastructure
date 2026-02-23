resource "aws_subnet" "main" {
  vpc_id = var.imported_vpc_id
  cidr_block = local.cidr

  tags = {
    Name = "Main-subnet"
  }
}

locals {
  cidr = "10.50.1.0/24"
}