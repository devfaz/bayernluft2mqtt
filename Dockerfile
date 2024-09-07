FROM python:alpine@sha256:4dae8a34125c839fce52c0b4efa963b1be1ce7e84df8eb1a62136049010916da

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
