FROM ghcr.io/linuxserver/baseimage-kasmvnc:fedora40
RUN rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && \
    dnf install 'dnf-command(config-manager)' -y && dnf install fuse -y && \
    dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ && \
    dnf install brave-browser -y

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000

VOLUME /config