FROM python:alpine@sha256:ee60f1fbb72e1844edce9ea169e0342b477822a3b5ec7a32637803bdca5c7362

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
