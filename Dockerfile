FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y gcc gdb libcap-dev libacl1-dev libselinux1-dev libseccomp-dev make
COPY tlpi-dist /tlpi-dist
RUN cd /tlpi-dist && make
