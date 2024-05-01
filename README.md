# MP3-Converter
Video to MP3 CLI tool built on microservice architecture

# Installation
1. Clone the repository to your local machine
2. Download Docker, kubectl, minikube, k9s

#Setup
1. start the mysql server with 'mysql.server start' and add your email to the init.sql file
2. execute 'mysql -uroot < init.sql' to pass in the sql file
3. access host database using 'sudo vim /etc/hosts'
4. add the following lines:
     127.0.0.1 kubernetes.docker.internal
     127.0.0.1 mp3converter.com
     127.0.0.1 rabbitmq-manager.com
5. execute 'minikube start'
6. execute 'minikube addons enable ingress'
7. execute 'minikube tunnel'
8. login to rabbitmq-manager.com using 'guest' for username and password
9. Add 'video' and 'mp3' queues
10. add email credentials to secret.yaml in notifications/manifest directory
11. execute 'kubectl apply -f ./ in each manifests directory to deploy the services

# Instructions
1. Request access token from command line (curl -X POST http://mp3converter.com/login -u email:password)
2. access upload endpoint and pass token as parameter (curl -X POST -F 'file=@./test.mkv' -H 'Authorization: Bearer token' http://mp3converter.com/upload)
3. access your email and pass the code to download the mp3 (curl --output filename.mp3 -X GET -H 'Authorization: Bearer token' "http://mp3converter.com/download?fid=file_id"

