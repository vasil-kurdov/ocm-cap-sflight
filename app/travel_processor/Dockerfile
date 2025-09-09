FROM nginx:1.27-alpine

COPY dist/ /usr/share/nginx/html/

COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template

RUN apk add --no-cache bash gettext

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]