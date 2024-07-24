FROM python:alpine@sha256:7f15e22f496c65cffbbac5e30e7e98d60f3e3b9cc5ee5d51cf3c55ed604787c8

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
