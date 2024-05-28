#!/bin/sh

#set -x

APP_VERSION=${1}
MACH=`uname -m`

echo "uname: `uname -a`"

HT=''

case "$MACH" in
  amd64)
    HT='amd64'
    ;;
  x86_64)
    HT='amd64'
    ;;
  arm64)
    HT='arm64'
    ;;
  aarch64)
    HT='arm64'
    ;;
  *)
    echo "none"
    ;;
esac

url="https://github.com/andydunstall/piko/releases/download/v${APP_VERSION}/piko-linux-${HT}"
echo "download $url"
wget -O /app/piko "$url"
# curl "$url" -o /app/piko
chmod +x /app/piko
