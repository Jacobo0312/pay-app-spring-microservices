http://localhost:8500/ui/dc1/overview/server-status


docker network create distribuidos

docker network ls

docker-compose -p discovery-and-config-server -f discovery-config_server.yml up -d


docker-compose -p storage -f storage.yml up -d

docker-compose -p kafka -f kafka.yml up -d

docker-compose -p services -f services.yml up -d



