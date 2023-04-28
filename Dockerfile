FROM nginx:alpine
LABEL maintainer="Melvin Kimathi"

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
