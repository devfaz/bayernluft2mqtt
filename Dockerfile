FROM python:alpine@sha256:100d96cd32e818e470a4793ef56806c52052e7f76de0093a012625a02eb0a780

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
