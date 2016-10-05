FROM ubuntu:16.10
MAINTAINER Andrej Palicka <andrej.palicka@gmail.com>

RUN apt-get -y update &&\
apt-get -y install git curl python-dev python python-pip unzip make gcc g++ autoconf automake libtool unzip patch\
&& pip install --upgrade pip
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
ADD . /usr/local/a12
WORKDIR /usr/local/a12
EXPOSE 4000
CMD gunicorn -w 3 --bind 0.0.0.0:$PORT -k=eventlet A12Api:app
