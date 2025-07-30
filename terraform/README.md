# Terraform Infrastructure Setup (Kubeadm-based Kubernetes Cluster)

This folder contains Terraform scripts for provisioning AWS infrastructure to deploy a Kubernetes cluster using **Kubeadm** (not EKS).

## 📌 Overview

We provisioned a custom infrastructure on AWS that includes:

- A custom VPC with subnets, IGW, routing, and ACLs
- EC2 instances:
  - 1 master node
  - 2 worker nodes
- A reverse proxy EC2 instance (optional for future ingress setup)
- Terraform state management using:
  - **S3** for remote state
  - **DynamoDB** table for state locking
- Modular code using:
  - `network` module (for VPC, subnets, IGW)
  - `server` module (for EC2 instances and SGs)

---

## 🖼️ Architecture Diagram

<p align="center">
  <img src="static/images/terraform.PNG" alt="Terraform " width="700"/>
</p>
---

## 📂 Folder Structure

```bash
terraform/
│
├── backend.tf                # S3 + DynamoDB backend definition
├── backend-resources.tf      # S3 bucket + DynamoDB table (infra for backend)
├── provider.tf               # AWS provider setup
├── variables.tf              # All variables used
├── terraform.tfvars          # Values for variables
├── main.tf                   # Call modules
│
├── modules/
│   ├── network/              # VPC, subnets, IGW
│   └── server/               # EC2 instances + SG


```
⚙️ Terraform Backend Setup


Make sure the S3 bucket and DynamoDB table exist before running any other terraform commands

```bash
terraform init -reconfigure
terraform plan
terraform apply
```
🛠️ Technologies Used
```bash
AWS EC2, VPC, S3, DynamoDB

Terraform v1.6+

Kubeadm for cluster bootstrapping

Ubuntu 22.04 AMIs

Jenkins (planned for CI/CD layer)

```
---------------------------------------------

