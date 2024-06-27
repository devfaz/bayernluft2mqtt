FROM python:alpine@sha256:ff870bf7c2bb546419aaea570f0a1c28c8103b78743a2b8030e9e97391ddf81b

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
