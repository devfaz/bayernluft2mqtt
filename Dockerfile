FROM python:alpine@sha256:15e516965a60d66273ae8795fc9f15f25b97fbc1f1e51caa747002e0ace62ef7

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
