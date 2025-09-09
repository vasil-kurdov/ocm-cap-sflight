#!/usr/bin/env bash
set -e
: "${BACKEND_HOST:?BACKEND_HOST env var is required}"
: "${BACKEND_PORT:=4004}"

envsubst '$BACKEND_HOST $BACKEND_PORT' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/conf.d/default.conf
exec nginx -g 'daemon off;'