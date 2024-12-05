FROM python:alpine@sha256:2caf5deceb981f10dcc02e0cb8483b4abb15e7e48386683865e47fa52e878f35

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
