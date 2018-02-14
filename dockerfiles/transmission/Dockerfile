FROM lsiobase/alpine.armhf:3.7
LABEL maintainer="Ferg@lMoran.me"

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	curl \
	jq \
	openssl \
	p7zip \
	rsync \
	tar \
	transmission-cli \
	transmission-daemon \
	unrar \
	unzip

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 9091 30006
VOLUME /config /watch
