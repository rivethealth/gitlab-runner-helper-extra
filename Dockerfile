FROM registry.gitlab.com/gitlab-org/gitlab-runner/gitlab-runner-helper:x86_64-c1edb478

RUN wget -O /tmp/docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz && \
  tar xzf /tmp/docker.tgz -C /usr/local/bin --strip-components=1 docker && \
  rm /usr/local/bin/dockerd
