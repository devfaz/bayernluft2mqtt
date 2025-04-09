FROM python:alpine@sha256:5b55b4912097e5c297584c6d041fdf94941f8c46a47e488f01556ac066353a41

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
