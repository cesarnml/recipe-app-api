FROM python:3.7-alpine
LABEL  maintainer="Cesar Napoleon Mejia Leiva"

ENV PYTHONUNBUFFERED=TRUE

RUN /sbin/apk add --no-cache --virtual .deps gcc musl-dev \
  && /usr/local/bin/pip install --no-cache-dir black==19.10b0 \
  && /sbin/apk del --no-cache .deps

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
