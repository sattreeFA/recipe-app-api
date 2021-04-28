FROM python:3.9-alpine
MAINTAINER Shivam Attree

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip3 install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
