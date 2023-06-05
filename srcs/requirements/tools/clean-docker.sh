#!/bin/bash

# To delete all containers including its volumes use:
docker rm -vf $(docker ps -aq)
# Remove all images
docker rmi -f $(docker images -aq)
# Remove all networks
docker network prune --force
# To remove all unused data:
docker system prune --all --force
# To remove all unused data:
docker volume rm $(docker volume ls -qf dangling=true) --force


