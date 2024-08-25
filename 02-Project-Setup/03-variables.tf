#### **`02-Project-Setup/03-variables.tf`**
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
