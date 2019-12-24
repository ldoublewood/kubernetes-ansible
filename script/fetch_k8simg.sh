docker pull mirrorgooglecontainers/kube-apiserver-amd64:v1.17.0
docker pull mirrorgooglecontainers/kube-controller-manager-amd64:v1.17.0
docker pull mirrorgooglecontainers/kube-scheduler-amd64:v1.17.0
docker pull mirrorgooglecontainers/kube-proxy-amd64:v1.17.0
docker pull mirrorgooglecontainers/pause:3.1
#docker pull mirrorgooglecontainers/etcd-amd64:3.2.18
#docker pull coredns/coredns:1.1.3

docker tag docker.io/mirrorgooglecontainers/kube-proxy-amd64:v1.11.3 k8s.gcr.io/kube-proxy-amd64:v1.17.0
docker tag docker.io/mirrorgooglecontainers/kube-scheduler-amd64:v1.11.3 k8s.gcr.io/kube-scheduler-amd64:v1.17.0
docker tag docker.io/mirrorgooglecontainers/kube-apiserver-amd64:v1.11.3 k8s.gcr.io/kube-apiserver-amd64:v1.17.0
docker tag docker.io/mirrorgooglecontainers/kube-controller-manager-amd64:v1.11.3 k8s.gcr.io/kube-controller-manager-amd64:v1.17.0
#docker tag docker.io/mirrorgooglecontainers/etcd-amd64:3.2.18  k8s.gcr.io/etcd-amd64:3.2.18
docker tag docker.io/mirrorgooglecontainers/pause:3.1  k8s.gcr.io/pause:3.1
#docker tag docker.io/coredns/coredns:1.1.3  k8s.gcr.io/coredns:1.1.3
