FROM python:alpine@sha256:32385e61c3414ffa5a6dbf52feace89f758ad68709a48d376d56a0232162665a

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
