FROM archlinux

RUN pacman -Sy --noconfirm wget pulseaudio bluez-utils curl
RUN wget https://sourceforge.net/projects/lmsclients/files/squeezelite/linux/squeezelite-pulse-1.9.9.1432-x86_64.tar.gz && \
    tar xzvf squeezelite-pulse-1.9.9.1432-x86_64.tar.gz && mv squeezelite /usr/bin
COPY restartbt.sh .
USER 1000
ENTRYPOINT ["bash", "restartbt.sh"]
