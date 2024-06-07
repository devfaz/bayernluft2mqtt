FROM python:alpine@sha256:affa51de304bec8c2e87a9226b018110d4a1105d10bff30b655672deaf98e34d

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
