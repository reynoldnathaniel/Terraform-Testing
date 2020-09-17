# Create a Key Pair using the generated public key locally for public subnet EC2 instance
resource "aws_key_pair" "publicEC2KeyPair" {
  key_name   = "PublicEC2KeyPair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
# Create a Key pair using the generated public key locally for private subnet EC2 instance
resource "aws_key_pair" "privateEC2KeyPair"{
  key_name = "PrivateEC2KeyPair"
  public_key = file(var.PATH_TO_PUBLIC_KEY1)
}