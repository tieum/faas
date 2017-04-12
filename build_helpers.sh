#!/bin/bash

docker build -t functions/prometheus . -f Dockerfile.prometheus
docker build -t functions/alertmanager . -f Dockerfile.alertmanager
