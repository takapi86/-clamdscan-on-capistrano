FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:..root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
RUN apt-get -y install git

RUN apt install -y clamav clamav-daemon
RUN cd /var/lib/clamav/ && wget "https://database.clamav.net/main.cvd"
RUN freshclam

CMD service clamav-daemon start && /usr/sbin/sshd -D
