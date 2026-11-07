# AWS EC2 + nginx web server

A web server on Amazon EC2, deployed with a bash script and served over HTTPS.

## What it does
- Launches nginx on an Ubuntu EC2 instance in a custom VPC public subnet
- Serves a page showing the server's hostname
- HTTPS via a free certificate (Certbot) and a DuckDNS domain

## Architecture
Internet → Internet gateway → public subnet (10.0.5.0/24) → EC2 instance
Security group: SSH (22) from my IP only, HTTP (80), HTTPS (443)

## How to deploy
1. Launch an Ubuntu EC2 instance in a public subnet with the security group above
2. SSH in and copy  onto the server
3. Run: 
4. Open the instance's public IP in a browser

## What I learned
- How to SSH into an instance
- How to write a simple script
- How nginx works and operates
- How to HTTPS and make a site secure
- How to setup a vpc, ec2 instance, route table, internet gateways, NAT gateways, subnets, security groups.
- How to use git and github effectively
