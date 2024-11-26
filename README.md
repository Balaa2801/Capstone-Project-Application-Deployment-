# Project Overview

This project automates the process of building, testing, and deploying a web application using Docker, Jenkins, and AWS EC2. Below are the relevant links and details for accessing the project:

---

### Relevant Links:
- **Google Drive:**  
  https://drive.google.com/drive/folders/1jj65T6As3aVvLB-IM1zCKT12b_Wajm2e?usp=sharing
  
- **GitHub Repository:**  
  - Master Branch:  
    https://github.com/Balaa2801/devops-build
  - Dev Branch:  
    https://github.com/Balaa2801/devops-build/tree/dev
    
- **Deployed Site URL:**  
  http://3.108.42.146:80
  
- **Jenkins URL:**  
  http://3.108.42.146:8080
  
- **Docker Image Name:** `build_web`  
  - Prod Image ID: `08fa8702cf14`  
  - Dev Image ID: `562d5c8f88f0`

---

### Project Workflow:

1. **Repository Setup:**  
   - Forked the given repository and added the required files:
     - `Dockerfile`
     - `docker-compose.yml`
     - `build.sh` (for building the Docker image)
     - `deploy.sh` (for deploying the Docker image to the server)

2. **Docker Setup:**  
   - Dockerized the React application by creating a `Dockerfile` and a `docker-compose.yml` file to manage containers.

3. **AWS EC2 Setup:**  
   - Launched a `t2.micro` EC2 instance to host the application.
   - Configured Security Groups to allow access to the application from any IP and restrict SSH access to a specific IP address.

4. **Jenkins Setup:**  
   - Installed and configured Jenkins on the EC2 instance.
   - Created a Jenkins pipeline that integrates with the GitHub repository to:
     - Build the Docker image whenever a push occurs to the `dev` branch.
     - Push the image to Docker Hub under the `dev` repository.
     - Push the image to Docker Hub under the `prod` repository when `dev` is merged to `master`.

5. **Docker Hub Setup:**  
   - Created two repositories on Docker Hub:
     - `dev` (public)
     - `prod` (private)
   - The Docker images are pushed to these repositories based on the branch.

6. **Application Deployment:**  
   - Deployed the Dockerized application to the public IP of the EC2 instance on port 80.

7. **Monitoring Setup:**  
   - Set up monitoring to check the health status of the deployed application.
   - Configured notifications to alert when the application goes down.

---

### Additional Information:

- **Git Workflow:**  
  - Code was pushed to the `dev` branch using Git CLI, with appropriate `.gitignore` and `.dockerignore` files in place.

- **Security Group Configurations:**  
  - EC2 instance security group configured for:
    - HTTP access to port 80 from any IP.
    - SSH access restricted to a specific IP for secure login.

---
