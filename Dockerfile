FROM alpine:3.19.1

USER root

RUN apk add --no-cache bash curl
ENV SOLR_CODE="admin:Xy3ZjyU)~(9IO8_n"

RUN mkdir -p /var/solr

COPY ./script.sh /var/solr

RUN chmod +x /var/solr/script.sh

ENTRYPOINT ["/var/solr/script.sh"]