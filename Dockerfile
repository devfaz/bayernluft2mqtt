FROM python:alpine@sha256:bd16cc548687f25bf7cbc29c3d284c290cf63899b281f0f3a52fc697b48884c7

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
