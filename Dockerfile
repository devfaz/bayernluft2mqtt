FROM python:alpine@sha256:f66b117ec7379d205d7e67adc0ba5df1e4a1e98a7e17076b0e1075fde65feb04

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
