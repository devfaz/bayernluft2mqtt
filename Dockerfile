FROM python:alpine@sha256:a982997504b8ec596f553d78f4de4b961bbdf5254e0177f6e99bb34f4ef16f95

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
