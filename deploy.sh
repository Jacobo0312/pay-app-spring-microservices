#!/bin/bash


# Create docker network

docker network create distribuidos


# Deploy Consul and Config Server

docker-compose -p discovery-and-config-server -f discovery-config_server.yml up -d

# Deploy databases
docker-compose -p storage -f storage.yml up -d

# Deploy Kafka and Zookeeper
docker-compose -p kafka -f kafka.yml up -d

# Deploy services
docker-compose -p services -f services.yml up -d

# Deploy NLB and API Gateway

docker-compose -p nlb-api-gateway -f nlb-api_gateway.yml up -d

