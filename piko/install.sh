#!/bin/sh

#set -x

APP_VERSION=$1
MACH=`uname -m`

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

wget -O /app/piko https://github.com/andydunstall/piko/releases/download/v${APP_VERSION}/piko-linux-${HT}
chmod +x /app/piko
