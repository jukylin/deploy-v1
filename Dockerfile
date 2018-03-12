FROM alpine
RUN apk add --update bash && rm -rf /var/cache/apk/*
ENV DIRPATH /data/go
WORKDIR $DIRPATH
ADD ./deploy-v1 $DIRPATH/deploy-v1
EXPOSE 8080
CMD ["deploy-v1"]
