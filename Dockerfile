FROM debian:buster-slim
LABEL MAINTAINER Bradley Leonard <bradley@leonard.pub>

# update and install packages
RUN apt-get update -y && \ 
  apt install -y --no-install-recommends openssh-client git
  rm -rf -- /var/lib/apt/lists/*

