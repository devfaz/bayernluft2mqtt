FROM python:alpine@sha256:7b76f1c83e0a66bd4ad4a3562d5bbf133dfbd5b2069cba86a2a728f27b2a71bb

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
