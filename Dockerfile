FROM python:alpine@sha256:29d92b7ff927005ffc223e6413ccb990aa04557ee97436526e62cd60dd537c1f

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
