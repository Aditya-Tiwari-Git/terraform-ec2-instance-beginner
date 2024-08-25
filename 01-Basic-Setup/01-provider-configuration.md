# Provider Configuration

In Terraform, a provider is responsible for managing the lifecycle of a resource. For example, the AWS provider manages AWS resources.

### Example: AWS Provider

1. **Create `main.tf`**: Start by creating a `main.tf` file.
   ```hcl
   provider "aws" {
     region = "us-west-2"
   }

2. **Configure the Provider**: Add your AWS credentials (optional if set in environment variables).
   ```hcl
   provider "aws" {
     region     = "us-west-2"
     access_key = "<your_access_key>"
     secret_key = "<your_secret_key>"
   }
   ```
