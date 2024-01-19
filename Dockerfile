FROM python:alpine@sha256:801b54e1ec51c23dd6f174f3f26a0ff5bf2a002c4bc0bf05b0e2b9237e10f5b8

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
