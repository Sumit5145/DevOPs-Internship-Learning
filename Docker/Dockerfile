# Dockerfile

FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]


# build command
docker build -t my-node:v1 .
docker run -d -p 3000:3000 my-node:v1

# Docker images push in Docker hub account
docker login
username :- sumit5145
password :- Sumit-khandla@5145

docker tag images id username/imagesname:tag
docker tag ca2b0f26964c sumit246/my-node:v1


URL :- https://devops-docker-file.s3.ap-south-1.amazonaws.com/Dockerfile.mkv

# DOCKER INSTALL


