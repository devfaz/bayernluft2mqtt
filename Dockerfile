FROM python:alpine@sha256:81362dd1ee15848b118895328e56041149e1521310f238ed5b2cdefe674e6dbf

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
