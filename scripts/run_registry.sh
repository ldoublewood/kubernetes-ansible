docker run -d --rm --name registry -p 5000:5000 registry:2
docker cp registry:/etc/docker/registry/config.yml config.yml
docker stop registry
echo -e "proxy:\n\
  remoteurl: http://hub-mirror.c.163.com" >> config.yml
docker run -d --name registry -p 5000:5000 -v registry:/var/lib/registry -v ${PWD}/config.yml:/etc/docker/registry/config.yml registry:2
