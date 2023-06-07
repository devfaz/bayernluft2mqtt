FROM python:alpine@sha256:adf851cf80f1f9f1b2d414019f378cbd1b7c52acc6aee1e69323b5d3b097b4d1

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
