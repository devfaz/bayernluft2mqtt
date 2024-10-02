FROM python:alpine@sha256:6666ea354f193c7a296dc2ce0188f318c9d69cb572eceaac1f7dbebd6791431f

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
