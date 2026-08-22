FROM alpine:latest

RUN apk add --no-cache busybox-extras \
    && mkdir -p /www \
    && echo "Hello from Docker CI/CD!" > /www/index.html

EXPOSE 8080

CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]