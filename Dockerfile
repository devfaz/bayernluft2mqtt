FROM python:alpine@sha256:ae64ab05f92ea14bc9207a7a3165494c028cf3af735aea45f7c3d7137da1b14b

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
