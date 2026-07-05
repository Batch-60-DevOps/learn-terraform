resource "aws_instance" "main" {
  for_each = { for comp in var.components : comp => comp }
  ami           = each.value["ami_id"]
  instance_type = lookup(each.value, "instance_type", "t3.micro")

  tags = {
    Name = each.key
  }
}
