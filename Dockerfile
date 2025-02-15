FROM python:alpine@sha256:318feba18a7426a027b7ad132ed9d488b5ab6e3ecad81e13289175e6a39c6e3d

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
