# Kubernete Ansible

## Features

* support Ubuntu only, thus more concise
* vagrant provided, but not bound to Vagrant enviroment, which means you can easily use this project to product enviroment
* package installation via apt
* no pain in China because mirror can be easily configured

## fix in case of target host version is ubuntu 20
```bash
sed -i 's/bionic/focal/g' roles/china/tasks/aliyun.list
sed -i 's/xeninal/focal/g' roles/kubepkg/main.yml
```