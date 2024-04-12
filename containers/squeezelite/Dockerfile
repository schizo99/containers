FROM archlinux

RUN pacman -Sy --noconfirm wget pulseaudio bluez-utils curl
RUN wget https://sourceforge.net/projects/lmsclients/files/squeezelite/linux/squeezelite-pulse-1.9.9.1432-x86_64.tar.gz && \
    tar xzvf squeezelite-pulse-1.9.9.1432-x86_64.tar.gz && mv squeezelite /usr/bin
COPY restartbt.sh .
USER 1000
#ENV XDG_RUNTIME_DIR="/run/user/1000"
#ENV DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"
#ENV SYSTEMCTL_FORCE_BUS=1
ENTRYPOINT ["bash", "restartbt.sh"]
#CMD ["squeezelite", "-s", "192.168.101.226:3483"]
