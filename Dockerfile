FROM python:alpine@sha256:25a82f6f8b720a6a257d58e478a0a5517448006e010c85273f4d9c706819478c

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
