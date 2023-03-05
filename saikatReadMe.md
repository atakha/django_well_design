Make a templates django app with proper design
 1) create root app named config
 2) create core app
 3) create asbstract user and AUTH_USER_MODEL = 'core.User'
 4) create superuser, add home page, add user at admin page
 
 ----
 5) seperate dev prod settings(also database) and set os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings.dev')
 6) set collectstatc configuration
 7) install whitenoise for serving assets in production
 8) install gunicorn server for production
 9) set the following temporary environment 
======================================set environment for production in ubuntu
#this is temporarily env setup for specific terminal, does not work other terminal

export DJANGO_SETTINGS_MODULE='config.settings.prod'
export SECRET_KEY='SaikatSecretKey'

export DATABASE_NAME='daily_cost'
export DATABASE_USER='root'
export DATABASE_PASSWORD='password'
export DATABASE_HOST='localhost'
export DATABASE_PORT='3306'

 => then run server
=========================================
Now Set up the Dockerfile and docker-compose.yml

To build docker compose image
$ sudo docker compose up

It will run automatically if no error occurs. visit: 0.0.0.0:8000