THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY:  build up_d up start down destroy stop restart ps clear

build:
	docker-compose -f srcs/docker-compose.yml build
up_d:
	docker-compose -f srcs/docker-compose.yml up -d
up:
	docker-compose -f srcs/docker-compose.yml up
start:
	docker-compose -f srcs/docker-compose.yml start
down:
	docker-compose -f srcs/docker-compose.yml down
destroy:
	docker-compose -f srcs/docker-compose.yml down -v
stop:
	docker-compose -f srcs/docker-compose.yml stop
restart:
	docker-compose -f srcs/docker-compose.yml stop
	docker-compose -f srcs/docker-compose.yml up -d
ps:
	docker-compose -f srcs/docker-compose.yml ps
clear:
	./srcs/requirements/tools/clean-docker.sh
