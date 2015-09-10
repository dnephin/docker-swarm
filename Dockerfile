FROM alpine:edge

COPY ./swarm /swarm
COPY ./certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY ./tmp /tmp

ENV SWARM_HOST :2375
EXPOSE 2375

VOLUME /.swarm

ENTRYPOINT ["sh", "-c"]
CMD ["/swarm manage --replication --advertise $(hostname -i):4000"]
