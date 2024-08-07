FROM python:alpine@sha256:d25c94a7862d8ded0c79c629fc56210001470e54d914ab2f161c18af0755eaae

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
