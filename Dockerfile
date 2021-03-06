FROM alpine
LABEL maintainer="www.mrdoc.fun"
ENV TZ=Asia/Shanghai

COPY chfs  /usr/bin/chfs

RUN apk add --no-cache tzdata \
    && mkdir /data \
    && chmod +x /usr/bin/chfs

ENTRYPOINT ["/usr/bin/chfs"]
CMD ["--path=/data"]
