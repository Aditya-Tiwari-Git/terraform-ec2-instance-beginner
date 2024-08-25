#### **`01-Basic-Setup/03-main.tf`**
```hcl
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform Example"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
