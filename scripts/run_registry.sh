docker run -d --rm --name registry -p 5000:5000 -v registry:2
docker cp registry:/etc/docker/registry/config.yml config.yml
echo "proxy: \
  remoteurl: https://registry.docker-cn.com \
  #remoteurl: http://f1374db2.m.daocloud.io" >> config.yml
docker run -d --name registry -p 5000:5000 -v registry:/var/lib/registry -v ${PWD}/config.yml:/etc/docker/registry/config.yml registry:2
