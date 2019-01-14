FROM bitnami/python:2.7.15

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install krb5-user libkrb5-dev

ADD requirements.txt /etc

RUN pip install -r /etc/requirements.txt

ADD krb5.conf /etc