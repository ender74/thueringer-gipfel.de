#FROM armbuild/debian:jessie
FROM debian:jessie
MAINTAINER Heiko Hüter <ender@ender74.de> 

RUN apt-get update && \
    apt-get -y install curl build-essential git ssh-client rsync libpng-dev && \
    apt-get clean
    
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get -y install nodejs && \
    apt-get clean

RUN npm install -g hexo-cli

ADD runHexo.sh /usr/bin/
RUN chmod 777 /usr/bin/runHexo.sh

RUN mkdir /site && chmod 777 /site
WORKDIR /site

EXPOSE 4000

VOLUME ["/site"]
ENTRYPOINT ["/usr/bin/runHexo.sh"]
CMD ["server", "-i", "0.0.0.0"]
