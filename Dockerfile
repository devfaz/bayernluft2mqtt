FROM python:alpine@sha256:76400ba76ffc77f62f588f51b902ae763c2b0bfaecfda7aafdf1cc10415fd766

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
