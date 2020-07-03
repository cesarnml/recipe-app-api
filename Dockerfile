FROM python:3.7-alpine
LABEL  maintainer="Cesar Napoleon Mejia Leiva"

ENV PYTHONUNBUFFERED=TRUE

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
