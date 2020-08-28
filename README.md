# Kubernete Ansible

## Features

* support Ubuntu only, thus more concise
* vagrant provided, but not bound to Vagrant enviroment, which means you can easily use this project to product enviroment
* package installation via apt
* no pain in China because mirror can be easily configured

## fix in case of target host version is ubuntu 20
```bash
sed -i 's/bionic/focal/g' roles/china/files/aliyun.list
sed -i 's/xeninal/focal/g' roles/kubepkg/tasks/main.yml
```
## about kubernete aliyun apt mirror and docker hub mirror
since 2020.08, aliyun k8s apt package upgraded to 1.19.0, but docker images not exists in aliyun docker hub mirror, so the whole installation will not succeed via 'apt get', in this case 'kubepkgfile' is used instead of 'kubepkg'

## Installation

### Download deb file

```bash
roles/kubepkgfile/
roles/kubepkgfile/files
roles/kubepkgfile/files/kubelet_1.18.8-00_amd64.deb
roles/kubepkgfile/files/kubectl_1.18.8-00_amd64.deb
roles/kubepkgfile/files/kubeadm_1.18.8-00_amd64.deb
roles/kubepkgfile/files/kubernetes-cni_0.8.6-00_amd64.deb
```