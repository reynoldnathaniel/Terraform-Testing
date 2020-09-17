
# Create an EC2 Instance in public subnet
resource "aws_instance" "EC2PublicSubnet" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # The VPC public subnet
  subnet_id = aws_subnet.main-public-1.id

  # The security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # The public SSH key
  key_name = aws_key_pair.publicEC2KeyPair.key_name
}

# Create an EC2 Instance in private subnet
resource "aws_instance" "EC2PrivateSubnet" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # The VPC private subnet
  subnet_id = aws_subnet.main-private-1.id

  # The security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # The public SSH key
  key_name = aws_key_pair.privateEC2KeyPair.key_name
}


