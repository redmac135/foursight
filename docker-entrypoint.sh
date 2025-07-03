#!/bin/sh

export DJANGO_SETTINGS_MODULE=cwsf.settings.production

# collect static files
python manage.py collectstatic --noinput

# apply database migrations
python manage.py migrate

# run the server
python manage.py runserver 0.0.0.0:$PORT

exec "$@"
