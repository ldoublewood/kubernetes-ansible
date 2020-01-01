docker run --name docker_registry_proxy -it \
       -p 0.0.0.0:3128:3128 \
       -v $(pwd)/data/docker_mirror_cache:/docker_mirror_cache \
       -v $(pwd)/data/docker_mirror_certs:/ca \
       -v /etc/localtime:/etc/localtime \
       -e REGISTRIES="k8s.gcr.io gcr.io quay.io" \
       -e AUTH_REGISTRIES="your.own.registry:username:password" \
       rpardini/docker-registry-proxy:0.2.4
