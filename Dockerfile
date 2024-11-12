FROM python:alpine@sha256:d4daf858ce04f8e6f9a3f73d036f7a8dbb3b9541dccdb87e93993589449c5b9e

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
