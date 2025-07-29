# 🏢 Enterprise Network – Secure Cloud Networking with NAT Gateway & AWS VPN

Enterprise Network is a simulated **enterprise-grade cloud architecture** showcasing secure networking patterns on AWS.  
It demonstrates the use of VPC, Public/Private subnets, NAT Gateway, VPN connections, and Bastion Hosts — providing a **realistic cloud environment** for secure communications.

───────────────────────────────────────────────

🚀 **Live Demo**  
🔗 Launch the Dashboard (after deploying to S3)

🗂️ **Project Type**  
Cloud Networking & Security – Multi-Tier Infrastructure with VPN and NAT Gateway

🛠️ **Technologies Used**  
• **Amazon VPC** – Custom networking environment  
• **EC2 Bastion Host** – Secure entry point for administration  
• **Private App & DB Servers** – Isolated workloads  
• **NAT Gateway** – Outbound internet access for private subnets  
• **Site-to-Site VPN** – Simulated secure remote access  
• **S3** – Static hosting for the network topology dashboard  
• **CloudWatch** – VPC Flow Logs monitoring  
• **IAM** – Fine-grained access control  

✨ **Key Features**  
• Multi-tier AWS network (Public, Private-App, Private-DB)  
• Secure SSH access using Bastion Host  
• NAT Gateway allowing outbound internet from private subnets  
• VPN simulation for remote connectivity  
• VPC Flow Logs for traffic analysis  
• Interactive network topology dashboard (hosted on S3)

───────────────────────────────────────────────

🧠 **Architecture Overview**

[ User Browser ]  
↓  
[ HTML/JS Dashboard (S3) ]  
↓  
[ Bastion Host (Public Subnet) ]  
↓  
[ App Server (Private-App Subnet) ]  
↓  
[ DB Server (Private-DB Subnet) ]  
↓  
[ NAT Gateway / VPN Gateway ]  
↓  
[ Secure Internet Access + Monitoring ]

───────────────────────────────────────────────

✅ **Deployment Steps**  
• Create VPC with 3 subnets (Public, Private-App, Private-DB)  
• Configure IGW, NAT Gateway, and VPN Gateway  
• Deploy EC2 instances: Bastion, App, DB  
• Configure Security Groups for tiered access  
• Upload UI dashboard to S3 and enable static hosting  
• Enable VPC Flow Logs and monitor in CloudWatch  

🧪 **Troubleshooting Tips**  
• SSH fails? → Check SG rules & route tables  
• VPN not connecting? → Verify customer gateway IP and routes  
• Flow logs empty? → Ensure log group association  

───────────────────────────────────────────────

🧹 **AWS Cleanup Guide (Free Tier)**  

✅ Terminate EC2 instances (Bastion, App, DB)  
✅ Delete NAT Gateway (to avoid costs)  
✅ Remove VPN connection  
✅ Delete VPC and associated resources  
✅ Empty & delete S3 bucket  

───────────────────────────────────────────────

🙌 **Acknowledgments**  
Built by **David Nfizi** as part of a real-world AWS Networking & Security Portfolio.
