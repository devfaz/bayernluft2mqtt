FROM python:alpine@sha256:d2423444f204ba18e683b8bc2538f27c8033fdd9dd918540db2acc4aa8d3cb43

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
