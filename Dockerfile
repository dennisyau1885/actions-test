FROM alpine
RUN adduser -D -u 1000 -h /app user
USER user
WORKDIR /app
COPY reverse.sh .
ENTRYPOINT ["./reverse.sh"]
