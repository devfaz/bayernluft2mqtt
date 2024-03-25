FROM python:alpine@sha256:bf7c2a88f14163371be438fb13415ada036dd02667a6f48a9d0c4130fd2f699f

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
