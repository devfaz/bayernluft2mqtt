FROM python:alpine@sha256:b7662fc33e07f05fb2f579c3634e1e4d2e30c02553397c6c24f775cb360dbc03

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
