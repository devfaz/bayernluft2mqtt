FROM python:alpine@sha256:40241d5dec48a0bc7a070e2244309fb409cd25509c56fef871494a9bbc57d51e

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
