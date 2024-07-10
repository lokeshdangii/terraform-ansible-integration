---

# Terraform-Ansible Integration

This repository demonstrates the integration of Terraform with Ansible for automated infrastructure setup and configuration. It includes Terraform code to provision an AWS EC2 instance and Ansible playbooks to install and update APT packages on the instance.

## Repository Structure

- `main.tf`: Terraform configuration file to create an AWS EC2 instance.
- `inventory`: Dynamic inventory file created by Terraform to store the EC2 instance IP address.
- `playbook.yml`: Ansible playbook to update the APT cache and install Apache HTTP Server on the EC2 instance.

## Prerequisites

- Terraform installed on your local machine.
- Ansible installed on your local machine.
- AWS credentials configured on your local machine.
- An existing AWS key pair for SSH access to the EC2 instance.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/lokeshdangii/terraform-ansible-integration.git
   cd terraform-ansible-integration
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

   This command will create an EC2 instance and run the Ansible playbook to install and update APT packages.

## Outputs

- `instance_ip`: The public IP address of the created EC2 instance.
