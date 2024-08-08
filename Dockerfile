FROM debian:bookworm-slim
LABEL MAINTAINER="Bradley Leonard <bradley@leonard.pub>"

# update and install packages
RUN apt-get update -y && \
  apt-get install -y --no-install-recommends openssh-client git && \
  apt-get install -y --no-install-recommends flake8 python3-pytest python3-pytest-cov black pip python3-venv && \
  apt-get install -y --no-install-recommends rsync && \
  apt-get install -y --no-install-recommends pip python3-audit python3-bandit && \
  apt autoremove -y && \
  rm -rf -- /var/lib/apt/lists/*
