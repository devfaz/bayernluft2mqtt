FROM python:alpine@sha256:14cfc61fc2404da8adc7b1cb1fcb299aefafab22ae571f652527184fbb21ce69

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
