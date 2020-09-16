data "aws_ip_ranges" "asia_us" {
  regions  = ["ap-southeast-1", "us-east-2"]
  services = ["ec2"]
}

resource "aws_security_group" "from_ohio_singapore" {
  name = "from_ohio_singapore"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = slice(data.aws_ip_ranges.asia_us.cidr_blocks, 0, 50)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.asia_us.create_date
    SyncToken  = data.aws_ip_ranges.asia_us.sync_token
  }
}

