FROM python:3.5-onbuild
MAINTAINER Andrej Palicka <andrej.palicka@gmail.com>

EXPOSE 4000
CMD gunicorn -w 3 --bind 0.0.0.0:$PORT -k=eventlet A12Api:app
