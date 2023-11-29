FROM python:alpine@sha256:c5bbde5ada8f427a1f2e2fb41f08077bfb4f1c779e82ab7e603a145275bec840

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
