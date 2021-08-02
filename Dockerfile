FROM alpine

RUN \
    apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install \
        awscli \
    && rm -rf /var/cache/apk/*

# lets add postgresql client
RUN apk add \
    postgresql-client \
    tree \
    bash \
    curl  \
    net-tools && \
	rm /var/cache/apk/*

RUN apk add jq

ENTRYPOINT ["aws"]
