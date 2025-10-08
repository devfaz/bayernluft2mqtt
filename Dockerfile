FROM python:alpine@sha256:0bf59161c735f604ea070af402d65b1a088ce3fd7fe4329f5983446148e84930

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
