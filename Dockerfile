FROM python:alpine@sha256:aaeb73123add786d05fefae925d4c3a99ebf3c8f44bfd5e2eacfbc7a8319d98f

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
