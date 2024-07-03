FROM python:alpine@sha256:ab8bec34de4202398fc8c28229ae6510cee874ae35c579090f1f8a9197deec29

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
