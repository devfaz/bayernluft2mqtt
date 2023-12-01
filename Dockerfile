FROM python:alpine@sha256:09f18c1f8ca777f63934b415af9a781a0e5aaba5e005ba0475cba71bb3e8e609

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
