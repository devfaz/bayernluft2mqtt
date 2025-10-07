FROM python:alpine@sha256:082c70eaaabc02e5b3ec6ffba6ef0bf90e2441bf4fcb68fbb897906c6bdf1e15

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
