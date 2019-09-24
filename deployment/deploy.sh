#!/bin/bash

HOST="34.254.227.242"
USER="ec2-user"
KEY="devops.pem"

ssh -i $KEY $USER@$HOST \
    "sudo yum install docker -y && sudo service docker start \
    && sudo docker run -d -p 80:8888 arananegra/cloud-lc-deployment"