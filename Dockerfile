FROM python:alpine@sha256:5dcc4bdd33c7ed3a43d64495fb83bb38653ab5cd776dd97e63e9b6499fc8fc89

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
