# Setting Up `main.tf`

In this section, we'll set up an EC2 instance using Terraform.

### Example: Creating an EC2 Instance

1. **Define the Provider**:
   ```hcl
   provider "aws" {
     region = "us-west-2"
   }
   ```

2. **Create an EC2 Instance**:
   ```hcl
   resource "aws_instance" "example" {
     ami           = "ami-0c55b159cbfafe1f0"
     instance_type = "t2.micro"

     tags = {
       Name = "Terraform Example"
     }
   }
   ```

3. **Output the Instance ID**:
   ```hcl
   output "instance_id" {
     value = aws_instance.example.id
   }
   ```
