# Microservices

![docker-architecture](https://user-images.githubusercontent.com/98215575/156015746-11792885-f4d9-4239-b518-fc0f9ed56909.png)


### Why use microservices?
- Monolith architecture can be used when the number of users are not large and the expected users are generally fixed.
- Monolith architecture is not scalable.

- Here is where Microservices come into play
- If the business model of a company plans expand microservices is ideal because it allows the business to scale out.
- Small services can be deployed individually. 
- Each service has a focus on one aspect of the business functionality
- The services are loosely coupled
- They work independently of each other and only communicate with the other services if necessary


  
### Docker 

![156005909-eb1546fd-9c71-4928-93f0-a034bf9c083b](https://user-images.githubusercontent.com/98215575/156017253-5e82b537-8de0-4326-9257-6abbd9b100e6.png)

- Docker is an open platform for developing,shipping, and running applications.
- Docker allows you containerize your microservices and simplify the delivery and management of those microservices
- Can anage your infrastructure by using docker containers.
- A container is a very lightweight form of a virtual machine. 
- Virtual machines take up a lot of resources and are slow because they have a lot of overhead.
- Docker container has access directly to host OS resources through the docker engine.

![2020_05_13_12_19_07_PowerPoint_Slide_Show_Azure_AZ104_M01_Compute_ed1_](https://user-images.githubusercontent.com/98215575/156019252-f7ce10c1-6748-4515-9371-f7b000683293.png)


### Virtual Machines vs Docker

<img width="362" alt="image" src="https://user-images.githubusercontent.com/98215575/156019894-6f5356ea-5c79-4eb2-8c1b-ab37ffd46ca4.png">


## Docker setup and commands
- Follow https://docs.docker.com/desktop/windows/install/
- open terminal and enter `docker version`
- Enter `alias docker="winpty docker"` if we have issues with running docker
- `docker pull` pull a specific image
- `docker push` push a specific image
- `docker login` adds your credentials
- `docker run -p 2368:2368 ghost` will run the ghost image in our container
- `2368:2368` first port represents the port on our localhost, second number represents the port the image runs on.
- On browser enter `localhost:2368`
- ` docker run -d -p 2368:2368 ghost` to run in a detach mode `-d`
- docker ps - shows which containers are running, their id's and other infor
- docker ps -a - will show what has been running and acts as a log
- `docker run -d -p 80:80 nginx` nginx
- `docker run -d -p 99:80 nginx` for of port mapping
- Enter `localhost:99` in browser
- `docker stop <id>` to stop the container running
- find the id with `docker ps`
- Resume the container with `docker start`
- `docker rm <id>` to delete the container of the image
- Delete container `docker rm`
- `docker logs <container id> `

### Benefirs of docker:
- Flexibility, can be used on all operating systems very easily.
- Cost-Effectiveness with Fast Deployment
- Mobility 
- Consistent enivronment
kernel is a layer: that allows your applications to connect to your hardware
the windows ui, applications, etc
Kernel is layered 

### Hosting static website with Nginx using docker

- copy the index.html from localhost to 
- to default location of nginx
- `cd /usr/share/nginx/html`
- 
- git bash is sometimes an issue, close the terminal again and run as admin
- To copy the index.html to the container
- `docker cp index.html peaceful_snyder:/usr/share/nginx/html/index.html` what i used for nginx
- `docker cp index.html <id or name>:<path>/<file.name>`


### Saving image on dockerhub
- run `docker commit <id or name>` e.g.`docker commit peaceful_snyder`
- `docker images` copy desired image id
- `docker tag <containername/id> <username>/<reponame>:<version>` `docker tag cb333be14231 latifsparta/latif_nginx:latest` default verion is latest
- `docker push <username>/<reponame> ` e.g. `docker push latifsparta/latif_nginx`
 exmaple 
- Now run`docker run -d -p <port:port> username/repo` e.g.`docker run -d -p 80:80 latifsparta/latif_nginx`
- You should see the image up on localhost 
-  
  ```
if you see blockers then it is cause windows has not given permissions to copy folders
you have your web page hosted with nginx
 ```
