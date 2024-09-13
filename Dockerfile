FROM python:alpine@sha256:8fdf21f22be23d7ddb1cebf830bf66e0720d36b3be9d369e2b02e4e6e16c1922

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
