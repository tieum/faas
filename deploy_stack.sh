#!/bin/sh
echo "Adding prometheus config in docker secrets"
docker secret create alert.rules ./prometheus/alert.rules
docker secret create prometheus.yml ./prometheus/prometheus.yml
docker secret create alertmanager.yml ./prometheus/alertmanager.yml

echo "Deploying stack"
docker stack deploy func --compose-file docker-compose.yml

