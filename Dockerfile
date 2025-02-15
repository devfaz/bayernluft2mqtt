FROM python:alpine@sha256:2c39ec94d4a87a074cced458da07865b427c5767e18f86e0fef59ce874d5c2e3

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
