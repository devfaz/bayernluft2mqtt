FROM python:alpine@sha256:63094abdaf49e046da9f6529ecd6ce4d853d9bfbf00a25c52bbbb68b3223b490

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
