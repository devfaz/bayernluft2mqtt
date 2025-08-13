FROM python:alpine@sha256:97990f8cff85f0a25eef434f77f265d63d3767d15f59bfd19860de0b7f702ead

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
