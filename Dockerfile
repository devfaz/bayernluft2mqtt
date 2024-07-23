FROM python:alpine@sha256:dbb264b17d3b5724e3487b2c685f5552a1cd66fa19864adc529d5ec09da13fb9

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
