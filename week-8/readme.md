## TASK-7: Autoscaling Group and Load Balancer



### 1. Created EC2 instance "ec2-dalibor-prastalo-web-server" from ami image named: "ami-dalibor-prastalo-web-server"

![AMI](https://i.ibb.co/xGyVX7L/AMI.png)


### 2. Created Application Load Balancer "alb-web-servers", connected to Target Group "tg-web-servers"

![Application Load Balancer](https://i.ibb.co/Fgw4cT6/ALB.png)


### 3. Created Auto Scaling Group:

![Auto Scaling Group](https://i.ibb.co/Jy2KvtF/ASG.png)


### 4. Automatic scaling policies
- CloudWatch alarm CPU > 18% = add 1 instance
- CloudWatch ok CPU < 18% = remove 1 instance

![ASGPolicies](https://i.ibb.co/q5wNMzM/ASGCW.png)


### 5. Infrastructure diagram from my perspective

![Architecture](https://i.ibb.co/yfLNmhv/diagram.png)


### 6. Link to Balancer DNS name-u:
[TASK7-Week8-ASG-LB](http://alb-web-servers-1196219409.eu-central-1.elb.amazonaws.com)
