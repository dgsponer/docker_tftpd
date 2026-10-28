FROM alpine:3.24.3
RUN set -xe \
	&& apk add --update --no-progress --no-cache tftp-hpa \
	&& rm -rf /var/cache/apk/*
CMD ["/usr/sbin/in.tftpd", "-L", "-v", "-s", "/var/lib/tftpboot"]
