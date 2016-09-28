#FROM armbuild/debian:jessie
FROM debian:jessie
MAINTAINER Heiko Hüter <ender@ender74.de>

RUN apt-get update \
    && apt-get -y install curl build-essential git ssh-client rsync libpng-dev \
    && apt-get clean \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get -y install nodejs \
    && apt-get clean \
    && npm install -g hexo-cli \
    && adduser --disabled-password --gecos '' hexo

ADD runHexo.sh /home/hexo/
RUN chmod 777 /home/hexo/runHexo.sh

RUN mkdir /site
WORKDIR /site
RUN chown -R hexo:users /site

EXPOSE 4000

USER hexo
VOLUME ["/site"]
ENTRYPOINT ["/home/hexo/runHexo.sh"]
CMD ["server", "-i", "0.0.0.0"]
