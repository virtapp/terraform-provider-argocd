![images](https://github.com/user-attachments/assets/a5335441-b19f-454e-9f88-e852fca7a519)


## ArgoCD | Managing Applications using Terraform 🚀
Deploy application using terraform in which you can have multiple iterations of same resource based on the resource or different application. Usage of terraform can simplified the deployment, however it depends on your use case and scenario


🎯  Key Features
```
✅ ArgoCD Provider in Terraform
✅ ArgoCD Application Deployment using Terraform
✅ ArgoCD Repository using Terraform
```

🚀 
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

🧩 Config 

```
scp -i ~/.ssh/<your pem file> <your pem file> ec2-user@<terraform instance public ip>:/home/ec2-user
chmod 400 <your pem file>
```

