FROM alpine

# lets add postgresql client
RUN apk add \
    postgresql-client \
    tree \
    bash \
    curl 
