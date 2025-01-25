FROM python:alpine@sha256:be540041682c83228415ca1dbdb061d78d6994523e8ff79c5d5b2a5cab56effb

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
