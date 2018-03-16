# docker-busybox
A smaller base image and process management with runit

#### The docker registry url is :
https://hub.docker.com/r/jermine/bbox

```
git clone https://github.com/JermineHu/docker-busybox.git
cd docker-busybox
docker build -t jermine/bbox -f Dockerfile .

# the busybox includ a light http server 
docker run -it -v `pwd`:/www -p 1180:80 --rm jermine/bbox httpd -p 80 -h /www

# use runit to management process in busybox
runsvdir -P /www/runit/service

docker run -d -v `pwd`:/www jermine/bbox runsvdir -P /www/runit/service

```
