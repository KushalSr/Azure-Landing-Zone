# Azure Landing Zone 

# Terraform Multi-Tier Architecture on Azure
This repository contains Terraform code to deploy a multi-tier architecture on Azure. It includes:

1 Resource Group
1 Storage Account
1 Virtual Network
1 Virtual Machine
1 Web App
1 Azure Container Registry (ACR)
1 Load Balancer
All resources are managed using Terraform modules, with input values fetched from tfvars files.



📦 terraform-multi-tier-azure  
│── main.tf                # Root module to call all other modules  
│── variables.tf           # Root variables used across all modules  
│── terraform.tfvars       # Main Terraform variables  
│── providers.tf           # Defines Azure provider and backend  
│── outputs.tf             # Outputs from root module  
│── modules/  
│   ├── resource_group/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── storage_account/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── virtual_network/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── virtual_machine/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── web_app/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── acr/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
│   ├── load_balancer/  
│   │   ├── main.tf  
│   │   ├── variables.tf  
│   │   ├── outputs.tf  
└── backend.tf              # Remote state configuration  
