# Example Deployment

```
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: bayernluft2mqtt
spec:
  replicas: 1
  selector:
    matchLabels:
      app: bayernluft2mqtt
  template:
    metadata:
      labels:
        app: bayernluft2mqtt
    spec:
      containers:
      - name: bayernluft2mqtt
        image: ghcr.io/devfaz/bayernluft2mqtt:latest
        envFrom:
        - secretRef:
          name: bayernluft2mqtt-secrets
```

# Example ENV / secret

```
MQTT_USERNAME=iot
MQTT_PASSWORD=12345verysecure
MQTT_HOST=mqtt.your-domain.de
BAYERNLUFT_HOST=bayernluft.your-domain.de
```