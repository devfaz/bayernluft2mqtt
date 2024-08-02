FROM python:alpine@sha256:2abecb741d63f6627f318377cd5886bf89069458007317488b0e9fe06d3c11f6

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
