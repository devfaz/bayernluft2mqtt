FROM python:alpine@sha256:f80206d96683c1b27cd522dc300f791a48362b895ad5c0bdd26f78f853c76fa5

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
