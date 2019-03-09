# kubernetes-for-all
#Prerequisite of installation  
	1. Kubectl required  
	2. curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64  
	3. chmod +x kops-linux-amd64  
	4. mv kops-linux-amd64 /usr/local/bin/kops  
	5. kops version  

# Setup an auto complete  
	1. as a root  
	2. yum install  bash-completion  -y  
cat <<EOF > /etc/yum.repos.d/kubernetes.repo  
[kubernetes]  
name=Kubernetes  
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64  
enabled=1  
gpgcheck=1  
repo_gpgcheck=1  
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF  
2.   yum install -y kubectl  
as a jenkins user  
3.  vi .bashrc  
source <(kops completion bash)  
4. Bash   
5. Kops TAB TAB  



# Create hosted zone
dev.com
$ aws s3 mb s3://devyourbucketname.com

#kops create cluster --name=yourbucketname.com --node-size="t2.micro" --master-size="t2.micro" --networking="weave" --topology="private"  --bastion="true" --dns="private" --zones="us-east-2a,us-east-2b,us-east-2c" --state="november-terraform-sstanytska.com" --yes

#kops create cluster --name=prod-november-terraform-sstanytska.com --node-size="t2.micro" --master-size="t2.micro" --master-zones="us-east-2a,us-east-2b,us-east-2c" --networking="weave" --topology="private"  --bastion="true" --dns="private" --zones="us-east-2a,us-east-2b,us-east-2c" --state="s3://prod-november-terraform-sstanytska.com" --out=. --target=terraform




Suggestions:  
 * validate cluster: kops validate cluster  
 * list nodes: kubectl get nodes --show-labels  
 * ssh to the bastion: ssh -A -i ~/.ssh/id_rsa admin@bastion.yourbucketname.com   
 * the admin user is specific to Debian. If not using Debian please use the appropriate user based on your OS.  
 * read about installing addons at: https://github.com/kubernetes/kops/blob/master/docs/addons.md  
 
