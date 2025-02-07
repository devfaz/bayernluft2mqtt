FROM python:alpine@sha256:3e7ba24f47ca46dca3491b35db5c2f33c43fa932568a3577783839bbfc528e9d

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
