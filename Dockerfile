FROM python:alpine@sha256:bd305dbc800ef3a0982766d28340f4fb6f2c57dc6bbba17cdfc0fe77a6b21202

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
