FROM python:alpine@sha256:99fd0972496d48f2cd6302696fe33d88c9a3461ce493bf5d1b2ace93c4302a45

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
