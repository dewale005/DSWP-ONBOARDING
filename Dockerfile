FROM python:3.7-alpine
LABEL Drugstoc Ehub LTD

ENV key PYTHONUNBUFFERED

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user