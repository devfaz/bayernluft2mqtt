FROM python:alpine@sha256:45368d5ac2fd9eb342dd9b26697bed66198870f13f6da0f68d0cf3e5ac9a9eab

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
