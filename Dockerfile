FROM alpine
LABEL maintainer="sjad"
LABEL version="0.1"
LABEL description="This is a custon Docker image for \
a ssl secured nginx server and webpage"

RUN apk update
RUN apk add nginx

ADD ./nginx-conf /etc/nginx

EXPOSE 80 443

CMD ["nginx"]
