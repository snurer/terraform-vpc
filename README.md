# AWS VPC with Terraform

This repository has different versions of Terraform codes for the following task.

Each version update has improvements in the code with different functions, arguments and meta-arguments.


This Folder has required Terraform Codes for the following tasks:

```
Create VPC with the CIDR block 10.0.0.0/16 in us-east-1.
Within the VPC, create the following resources:
Part1
A. Create a public route table.
B. Create 3 subnets with CIDR range 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24 and
associate the subnets to public route table
C. Create a Internet Gateway and attach it to the public route table
Part2
A. Create a private route table and 
B. Create 3 subnets with CIDR range 10.0.11.0/24, 10.0.12.0/24, 10.0.13.0/24 and
associate the subnets to private route table
C. Create a NAT gateway and attach it to the private route table
Part3
A. Create an EC2 Instance on one your public subnets
B. Create a security group, open port 22 && 80, attach it to EC2 Instance
C. Run the following script on your using User Data:
#!/bin/bash
sudo yum install httpd -y
sudo systemctl start httpd
sudo echo 'Hello from ... Instance' >> /var/www/html/index.html
D. Use your Terraform Server's Public Key for the EC2 instance.
```
