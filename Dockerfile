FROM python:alpine@sha256:c7eb5c92b7933fe52f224a91a1ced27b91840ac9c69c58bef40d602156bcdb41

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
