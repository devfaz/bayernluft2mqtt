FROM python:alpine@sha256:cf0a16847d2d1e561677f5ddd924aa5c47eb2050147b6e4020588d30b6bde427

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
