FROM python:alpine@sha256:507818d46649f8543e58d19a00e3a1a428bb7e87c0bf7f7d1ffe7b076cda11be

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
