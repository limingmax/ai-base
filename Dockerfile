FROM bitnami/python:3.6.7

ADD requirements.txt /etc

RUN pip install -r /etc/requirements.txt
