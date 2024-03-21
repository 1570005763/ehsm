FROM openanolis/anolisos:8.6

RUN dnf install -y 'dnf-command(config-manager)' && dnf config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

RUN dnf install -y docker-ce docker-compose-plugin docker-buildx-plugin

# VOLUME /var/run/docker.sock:/var/run/docker.sock

# VOLUME /home/daniel/ehsm:/home/ehsm

# ENTRYPOINT ["dockerd"]