FROM python:alpine@sha256:d696c999babcff2d6194727e5c36908e7741aa530e6ed0d8e2fb4b6cfb7be43d

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
