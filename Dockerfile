FROM alpine:latest

RUN apk add --no-cache openldap-clients python \
    && rm -rf /var/lib/apt/lists/*

RUN python -V

RUN mkdir /scripts

ADD scripts/* /scripts/

RUN chmod +x scripts/*

WORKDIR /scripts

ENTRYPOINT [ "./ldapsearch.sh" ]

CMD [ "-h" ]