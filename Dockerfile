FROM python:alpine@sha256:5d769f990397afbb2aca24b0655e404c0f2806d268f454b052e81e39d87abf42

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
