FROM python:alpine@sha256:bbe8d3f60d8cd79dce5e74932cf07c3e3b9e739692d961c046f2a353b78dd4b2

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
