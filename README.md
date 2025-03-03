# Nginx Website Deployment Script Documentation

## Overview
This ptoject is HNG 12 stage 0 task, it conatains a html file and script automates the process of deploying a simple website using Nginx web server. This guide explains how to automatically deploy a website using Nginx on an AWS EC2 instance by utilizing the "User Data" feature during instance launch. The script will run automatically when the instance starts for the first time, setting up your web server and deploying your website content.


## Prerequisites
- AWS Account
- Access to AWS EC2 Console
- Basic understanding of EC2 instance launch process

## EC2 Launch Configuration

### Step 1: Start EC2 Launch Process
1. Go to AWS Management Console
2. Navigate to EC2 Dashboard
3. Click "Launch Instance"

### Step 2: Choose AMI and Instance Type
1. Select "Ubuntu Server" AMI
2. Choose t2.micro instance type (free tier eligible)

### Step 3: Configure Security Group
1. Create a new security group or select existing
2. Add the following inbound rules:
   - HTTP (Port 80) - Source: 0.0.0.0/0
   - SSH (Port 22) - Source: Your IP address
   - HTTPS (Port 443) - Source: 0.0.0.0/0 (if using SSL)

### Step 4: Configure User Data
1. In the "Advanced Details" section, find "User Data"
2. Select "As text"
3. Copy and paste the set_up_nginx.sh in this repository


## Verification and Troubleshooting

### Verify Deployment
1. Wait for instance to launch and initialize (about 5 minutes)
2. Get the instance's public IP from EC2 Dashboard
3. Access your website: `http://your-instance-public-ip`


### Maintenance
1. To update website content:
   - Update your Git repository
   - Terminate and relaunch instance, or
   - SSH into instance and run update script manually

### Cost Optimization
1. Use t2.micro or t3.micro instances for testing (free tier eligible)
2. Consider using Spot Instances for non-production workloads
3. Monitor usage with AWS CloudWatch


## Limitations
- Script runs only on first instance launch
- No automatic SSL configuration
- Basic error handling
- Single page deployment


## Challenges Faced
The main challenge was timing script execution during instance launch. Security group configuration required balancing accessibility with security, addressed through least-privilege access.

## Learning Outcomes
This project provided practical experience with AWS services and automation, enhancing skills as a [DevOps Engineer](https://hng.tech/hire/devops-engineers) and [AWS Solutions Architect](https://hng.tech/hire/aws-solutions-architects) best practices, it improved understanding of cloud infrastructure, automation, and security implementation.
