# Create an S3 bucket
resource "aws_s3_bucket" "priya_my_bucket" {
  bucket = "my-terraform-demo-bucket-12345"
  acl    = "private"
}

# Create an EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0360c520857e3138f" # Amazon Linux 2 (us-east-1)
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}


