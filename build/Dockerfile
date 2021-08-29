FROM alpine:latest
LABEL maintainer "lprintf <lprintf@>"
LABEL source "https://github.com/lprintf/less-nfs"

COPY entry.sh /bin/entry.sh

# for Chinese domestic users 
RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories &&\
apk add --no-cache --update --verbose nfs-utils &&\
chmod +x /bin/entry.sh

# for overseas users 
# RUN apk add --no-cache --update --verbose nfs-utils &&\
# chmod +x /bin/entry.sh

VOLUME ["/share"]

ENTRYPOINT [ "/bin/entry.sh" ]