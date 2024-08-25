# Creating an EC2 Instance

This section walks you through creating an EC2 instance using Terraform.

### Step 1: Define the Variables

Create a `variables.tf` file to define any variables you want to use in your configuration.

```hcl
variable "region" {
  description = "AWS region to deploy the instance"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "Type of EC2 instance to deploy"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"
}
```

### Step 2: Write the `main.tf` File

Create the `main.tf` file with the following content:

```hcl
provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Terraform Example"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
```

### Step 3: Apply the Configuration

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Plan the Changes**:
   ```bash
   terraform plan
   ```

3. **Apply the Changes

**:
   ```bash
   terraform apply
   ```

This will deploy the EC2 instance and output the instance ID.
```

### **Final Steps: Committing and Pushing to GitHub**

1. **Initialize Git and Add Remote**:
   ```bash
   git init
   git remote add origin https://github.com/yourusername/terraform-ec2-instance-beginner.git
   ```

2. **Add All Files to Git**:
   ```bash
   git add .
   ```

3. **Commit the Changes**:
   ```bash
   git commit -m "Initial commit - Basic Terraform EC2 setup"
   ```

4. **Push to GitHub**:
   ```bash
   git push origin main
   ```

With this setup, the repository is well-organized and easy to follow. Users can clone the repo and start the project by following the detailed guides provided.
