<img src="https://raw.githubusercontent.com/Saintmori/terraform/main/terraform.png" width="200" height="200">

VPC V1.1

For this task,

- I have created a new VPC with the required CIDR blocks and subnets in [vpc.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/vpc.tf) file using the [aws_vpc Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)

- Created Route Tables and configured their Subnet Associations in [rtb.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/rtb.tf) and benefited from [aws_route Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route)

- I also created Internet Gateway and NAT Gateway and associated them with my public and private subnets in [igw-nat.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/igw-nat.tf) file. Fot the required syntax, you can follow the [NAT Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) and [Internet Gateway Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) 

## Data Sources

Terraform data sources let you dynamically fetch data from APIs or other Terraform state backends. Data sources make your configuration more flexible and dynamic and let you reference values from other configurations, helping you scope your configuration while still referencing any dependent resource attributes. 

In this task; to fetch the data about AMI ID and Key Pairs, I have used Data Sources instead of manually going and getting the data from AWS console. You can check the Data Sources from [data-sources.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/data-sources.tf) file.

## Tfvars File 

- Tfvars files allow us to manage variable assignments systematically in a file with the extension .tfvars 
- tfvars files are the best and most common way to do so due to their simplicity and effectiveness. Instead of going and touching our [variables.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/variables.tf) configuration file everytime we need to change a value, tfvars file gives us easy and safe way to change our values. 

Terraform recognizes files with ```.tfvars``` extension, so everytime we change the value in this file, it will go and change our variables in both variables file and other configuration files. Check out the [dev.tfvars](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/dev.tfvars) file to have a closer look out .tfvars file in this task.

----

- Then I specified Security Group Rules in [sg.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/sg.tf) file and created the [ec2.tf](https://github.com/snurer/terraform-session-october/blob/main/vpc-task/ec2.tf) with the required references to my Key Pair, SG, Subnet, and User Data. 

That's it!
You are ready to run these commands:

```
terraform init
terraform plan
terraform apply
```

# Contribution

Thank you for reading! Please don't hesitate to clone, use and contribute!

```https://github.com/snurer/terraform-session-october.git```

Author: [snurer](https://github.com/snurer)
