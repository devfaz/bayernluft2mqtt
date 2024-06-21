FROM python:alpine@sha256:44a5b997abb8de1ea47a4a91a81431f8dc8f789e2bf45530aa0db85344d70bad

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY bl2mqtt.py .

ENV PYTHONUNBUFFERED=1
CMD [ "python", "./bl2mqtt.py" ]
