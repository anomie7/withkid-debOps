#! /bin/bash
# you need input your access key using 'aws configuration' command

read -p "instance name: " machineName
read -p "instance type: " instanceType

instanceType=${instanceType:-t2.micro}

docker-machine create -d amazonec2 \
--amazonec2-instance-type $instanceType \
--amazonec2-region ap-northeast-2 $machineName 

docker-machine ls
docker-machine ssh $machineName sudo usermod -aG docker ubuntu
