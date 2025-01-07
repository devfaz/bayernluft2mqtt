FROM python:alpine@sha256:0df5d0fed7583b14e7761a58c8bcb7444c5c520245ad3f1a346a7beafcf6ade5

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
