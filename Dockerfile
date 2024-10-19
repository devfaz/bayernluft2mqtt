FROM python:alpine@sha256:577c78f288e99f08c98a834158366bf38c5a1c64630f0a9f925a53d1b5836a0e

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
