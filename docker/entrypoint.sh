#!/bin/sh
echo hey
rm /usr/src/app/tmp/pids/server.pid > /dev/null 2>&1
rails db:create
rails db:migrate
rails s -b 0.0.0.0

exec "$@"
