FROM python:alpine@sha256:500c53884dcc36a8eff18a183f02476635c4ace4f362c569993963217c010d26

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
