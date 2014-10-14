FROM dockerfile/ansible
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y dnsutils sshpass
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_CONFIG /tmp/ansible.cfg
ADD ansible.cfg /tmp/
WORKDIR /data
