# Base Image
FROM ubuntu
# Who create Dockerfile
MAINTAINER Charles
# Executing ubuntu cmd 
RUN echo "Hello World"
RUN apt-get update
RUN apt-get install -y nginx
#Copying files Local to Container
COPY index.html /usr/share/nginx/html/
# Cmd for the starting point in this case this will start nginx 
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80