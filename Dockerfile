FROM python:alpine@sha256:c28add7bfdd8e8c0bb557f4123d73a0f3afc2f3d7972c9af021b7551658bc641

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
