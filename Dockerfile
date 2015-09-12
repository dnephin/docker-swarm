FROM    alpine:edge

COPY    ./swarm /swarm
COPY    ./certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY    ./tmp /tmp

ENV     SWARM_HOST :2375
EXPOSE  2375

ADD     manage /manage
VOLUME  /.swarm
ENTRYPOINT ["/manage"]
