#!/bin/bash

while true
do
    echo 'Postgres is unavailable - sleeping'
    sleep 1
    if python manage.py check_db_connection
    then
        break
    fi
done

python manage.py migrate
exec "$@"
