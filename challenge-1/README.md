# AWS-3-tier-Architecture-using-Terraform-Deployment

#Provision three tier architecture on AWS using Terraform#

Deployed entire Infrasturecture in N.Virginia (us-east-1) Region

# Networking Services :
  1. VPC (demo-vpc) = 10.0.0.0/16 CIDR
  2. Availability Zones (Az's) = (us-east-1a | us-east-1b | us-east-1c)
  3. 3-public-subnets (demo-vpc-public-us-east-1a | demo-vpc-public-us-east-1b | demo-vpc-public-us-east-1c)
  4. 3-app-subnets (demo-vpc-private-us-east-1a | demo-vpc-private-us-east-1b | demo-vpc-private-us-east-1c)
  5. 3-database-subnets (demo-vpc-db-us-east-1a | demo-vpc-db-us-east-1b | demo-vpc-db-us-east-1a)
  
 # Infrastructure Components:
 1. EC2 php server's configured in Autoscalling groups. (demo-asg1 | demo-asg2)
 2. Application Load Balancer. (demo-alb)
 3. RDS-MySql Instance deployed in one AZ's. (demo-rds)
 4. demo-jump-server (terraform-deployment-server)
 
 Steps:
 1) First create S3 bucket & DynamoDB Table to store terraform state files & backend.
 
 2) Using -> terraform init command initalise terraform & download providers plugins required to deployements.
 
 3) terraform plan -> to checkout desire plan is correct or not.
 
 4) terraform apply -> to deploy infra, networking & Databases.
 
 5) Save the terraform output for future reference.
 
 6) terraform destroy - To delete created plan.
 
