FROM bitnami/python:2.7.15

ADD requirements.txt /etc

RUN pip install -r /etc/requirements.txt

RUN apt-get update && apt-get -y install krb5-user libkrb5-dev

ADD krb5.conf /etc
