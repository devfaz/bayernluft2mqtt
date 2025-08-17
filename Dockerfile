FROM python:alpine@sha256:a70b35b575e33d951e3f9d3fe94163ef0fd338c22552bc587a1b098a87ed6184

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
