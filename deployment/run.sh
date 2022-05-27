#!/usr/bin/env bash

_term() {
  echo "Caught SIGTERM signal!"
  sleep 10
  kill -TERM "$child" 2>/dev/null
}

trap _term SIGTERM

gunicorn -b :5000 -w "${SUMMER_WORKERS}" --worker-class uvicorn.workers.UvicornWorker --access-logfile - --access-logformat '%(h)s %(l)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s"' "${SUMMER_PROJECT_NAME}:create_app()" --timeout 90 &

child=$!
wait "$child"