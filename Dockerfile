FROM bitnami/python:2.7.15

RUN apt-get update && apt-get -y install krb5-user libkrb5-dev

ADD requirements.txt /etc

RUN pip install -r /etc/requirements.txt

ADD krb5.conf /etc
