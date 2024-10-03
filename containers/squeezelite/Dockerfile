FROM archlinux

RUN pacman -Sy --noconfirm wget pulseaudio bluez-utils curl
RUN wget https://sourceforge.net/projects/lmsclients/files/squeezelite/linux/squeezelite-pulse-2.0.0.1488-x86_64.tar.gz && \
    tar xzvf squeezelite-pulse-2.0.0.1488-x86_64.tar.gz && mv squeezelite /usr/bin
COPY restartbt.sh .
ENV IP_ADDRESS=192.168.201.241
USER 1000
ENTRYPOINT ["bash", "restartbt.sh"]
