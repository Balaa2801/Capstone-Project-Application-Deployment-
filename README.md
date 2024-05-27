Here I have given all the required links. You can access the screenshots and the document I have added in the google drive link and in the git repo link.

Google drive link : https://drive.google.com/drive/folders/1jj65T6As3aVvLB-IM1zCKT12b_Wajm2e?usp=sharing

Git hub repo url (master branch): https://github.com/Balaa2801/devops-build
Github repo url (dev branch): https://github.com/Balaa2801/devops-build/tree/dev
Deployed site url: http://3.108.42.146:80 
Jenkins url:  http://3.108.42.146:8080

Docker Image Name :  build_web (ID 08fa8702cf14)
docker image id:  08fa8702cf14 (prod)  562d5c8f88f0 (dev)

Forked the given repo. Then, I have written the required files to build the run like docerkfile, docker-compose.yml file, build.sh and deploy.sh.
Then I have created the ec2 ubuntu instance and installed the docker and Jenkins on it. 
Once it is installed, I then configured Jenkins and successful configuration of Jenkins I have created the new pipleline project 
where I have configured the capstone project and given all the required information 
for the configuration and also configured the github webhook to the Jenkins in a way,  
that whenever the push happens in the git repo, the image will be build and then pushed to the dockerhub repo. 
I have written the Jenkins file to build the image using the dockerfile and the dockercompose file and then once build, 
it will be pushed to the dockerhub repo based on the git branch. Then the application will be deployed on the publicip of my ec2 instane with the port 80. 
Then I have setup the monitoring to check the health status.
