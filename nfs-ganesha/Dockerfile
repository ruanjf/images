FROM debian:11.8

# https://download.nfs-ganesha.org/5/5.5/Debian/
# https://github.com/ugoviti/izdock-nfs-ganesha/blob/main/Dockerfile

ENV APP_NAME        "nfs-ganesha"
ENV APP_DESCRIPTION "NFS-Ganesha Userspace NFS File Server"

RUN apt-get update && \
	apt-get install -y locales wget gnupg2 && \
	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

RUN wget -O - https://download.nfs-ganesha.org/5/rsa.pub | apt-key add - && \
	echo deb [arch=amd64] https://download.nfs-ganesha.org/5/LATEST/Debian/bullseye/amd64/apt bullseye main > /etc/apt/sources.list.d/gluster.list && \
	apt-get update && \
	apt-get -y install nfs-ganesha && \
	rm -rf /var/lib/apt/lists/*

# NFS daemon configuration
ENV EXPORT_PATH "/exports"

# fix missing directories
RUN mkdir -p /var/run/ganesha

# APP volumes
VOLUME ["${EXPORT_PATH}"]

# APP ports
EXPOSE 111 111/udp 2049 20048 38465-38467

# container pre-entrypoint variables
ENV ENTRYPOINT_TINI "true"
ENV UMASK           0002

# add files to container
ADD /entrypoint.sh /entrypoint-hooks.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["/usr/bin/ganesha.nfsd", "-F", "-L", "/dev/stdout", "-f", "/etc/ganesha/ganesha.conf"]
