# Installing Terraform

Terraform can be installed on Linux, macOS, and Windows. Below are the installation instructions for each operating system.

### Linux

1. **Download Terraform**:
   ```bash
   wget https://releases.hashicorp.com/terraform/1.9.5/terraform_1.9.5_linux_amd64.zip
   ```

2. **Unzip the Package**:
   ```bash
   unzip terraform_1.9.5_linux_amd64.zip
   ```

3. **Move Binary to Path**:
   ```bash
   sudo mv terraform /usr/local/bin/
   ```

4. **Verify Installation**:
   ```bash
   terraform -v
   ```

### macOS

1. **Using Homebrew**:
   ```bash
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   ```

2. **Verify Installation**:
   ```bash
   terraform -v
   ```

### Windows

1. **Download Terraform**: Go to the [Terraform downloads page](https://www.terraform.io/downloads.html) and download the Windows version.
2. **Unzip the Package**: Extract the downloaded zip file.
3. **Move Binary to Path**: Move the `terraform.exe` file to a directory included in your system's `PATH` environment variable.
4. **Verify Installation**:
   ```bash
   terraform -v
   ```

