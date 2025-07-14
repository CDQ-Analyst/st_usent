# Streamlit app Docker Image

## 1. Login with your AWS console and launch an EC2 instance
## 2. Run the following commands

Note: Do the port mapping to this port:- 8501

```bash
sudo apt-get update -y
```
```bash
sudo apt-get upgrade
```

#Install Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
```
```bash
sudo sh get-docker.sh
```
```bash
sudo usermod -aG docker ubuntu
```

```bash
newgrp docker
```

```bash
docker --version
```




```bash
git clone "your-project"
```
```bash
ls
```

```bash
cd [name of your instance]/   # cd st_usent/
```
```bash
ls
```


```

```bash
docker build -t sulaymanaziz/usent:latest . 
```

```bash
docker images -a  
```

```bash
docker run -d -p 8501:8501 sulaymanaziz/usent
```
### then got to EC2 instance copy  Public IPv4 address  paste in the web :8501 to run the streamlit app


```bash
docker ps  
```

```bash
docker stop container_id
```

```bash
docker rm $(docker ps -a -q)
```

```bash
docker login 
```
# ubuntu@ip-172-31-83-213:~/st-deploy-demo$ docker login

# USING WEB-BASED LOGIN

# i Info → To sign in with credentials on the command line, use 'docker login -u <username>'
         

# Your one-time device confirmation code is: VWZP-CQQP
# Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

## Waiting for authentication in the browser…
## after login sucessfully then proced to push 



```bash
docker push sulaymanaziz/usent:latest 
```

```bash
docker rmi sulaymanaziz/usent:latest
```

```bash
docker pull sulaymanaziz/usent
```
```bash
docker run -d -p 8501:8501 sulaymanaziz/usent
```

### if you want to change app.py then nano app.py   do your change then save In short: Ctrl+O, Enter, Ctrl+X
### then re build docker image:
nano app.py 
### do your change then save In short: Ctrl+O, Enter, Ctrl+X
docker build -t sulaymanaziz/usent:latest .

docker ps

docker stop <CONTAINER_ID_OR_NAME>
docker rm <CONTAINER_ID_OR_NAME>

docker login 








