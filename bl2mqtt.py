#!/usr/bin/env python3
import paho.mqtt.client as mqtt
import requests
import time
import re
import os
from yaml import load, dump

try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper

mqtt_password=os.environ.get('MQTT_PASSWORD')
mqtt_username=os.environ.get('MQTT_USERNAME')
mqtt_host=os.environ.get('MQTT_HOST')
bayernluft_host=os.environ.get('BAYERNLUFT_HOST')

client = mqtt.Client(mqtt.CallbackAPIVersion.VERSION2)
client.username_pw_set(mqtt_username, password=mqtt_password)
client.connect(mqtt_host, 1883, 60)
client.loop_start()

print("Starting...")
while True:
    for node in ["bayernluft"]:
        print("Reading... %s" % node)
        r = requests.get('http://' + bayernluft_host + '/?export=1')
        r.raise_for_status()

        data = load(r.text, Loader=Loader)
        print("Sending... %s" % node)
        for key in data.keys():
            value = data[key]

            if isinstance(value, str) and re.search(',', value):
                  value = float(data[key].replace(',', '.'))

            client.publish("rest-to-mqtt/%s/%s" % (node, key), value)

    print("Sleeping...")
    time.sleep(60)

