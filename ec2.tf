provider "aws" {
  region = "REGION"
  access_key = "yOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "a1" {
  ami = "ami-04706e771f950937f"
  instance_type = "t2.large"
  count = 5 # ignore changes
  lifecycle {
    ignore_changes = [
      ami
    ]
  }
}
