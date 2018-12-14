FROM  ubuntu
Maintainer abc abc.com
SHELL ["/bin/sh", "-c"]
COPY index.html /tmp/
RUN apt update
RUN apt -y install wget default-jdk nodejs npm
RUN java --version && node -v && npm -v

ENV NAME=ABC
CMD /bin/bash
EXPOSE 80

