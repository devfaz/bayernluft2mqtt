FROM python:alpine@sha256:bd8f7ae071e5aad0b84264df205f5a156a777652cf4a20583c9f765883f424b9

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
