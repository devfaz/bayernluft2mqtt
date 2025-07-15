FROM python:alpine@sha256:e08874637f2704667426cb3b8d14581b9cb12dd2c237c8419f65446669443921

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
