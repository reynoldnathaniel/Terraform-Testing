output "public-instance-ip" {
  value = aws_instance.EC2PublicSubnet.public_ip
}

output "private-instance-ip" {
  value = aws_instance.EC2PrivateSubnet.private_ip
}

