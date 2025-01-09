FROM python:alpine@sha256:4ecc1be699f33ab3051ae8ec9532a77d1bf075739b1269b253cf3906a922f74e

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
