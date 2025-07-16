FROM python:alpine@sha256:a2e25f0bfa7a23e1ef1bd369dce5a4f61b8447bea090302aa31bfd0bab709f99

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
