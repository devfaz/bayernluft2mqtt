FROM python:alpine@sha256:ef276cd33d811f202f7c150ba9ff30b2ef09a5a54644dea0777bc102582aacee

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
