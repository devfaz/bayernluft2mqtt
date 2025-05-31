FROM python:alpine@sha256:a9bceef1fb20825c4f4c28eca616e5c1497bec444ea31205cc667b0b962fd9df

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
