

## build
cd ./nfs-ganesha
docker build --platform linux/amd64 -t ruanjf/nfs-ganesha .

docker run --platform linux/amd64 --rm -it debian:11.8 bash


https://github.com/nfs-ganesha/nfs-ganesha/wiki/Setup

## copy from izdock-nfs-ganesha
https://github.com/ugoviti/izdock-nfs-ganesha