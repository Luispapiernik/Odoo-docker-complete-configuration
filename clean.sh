#!/bin/bash

export $(grep -v '^#' enviroment.env | xargs -0)
export $(grep -v '^#' postgres.env | xargs -0)
export DB_VOLUME=${PROJECT_NAME}-odoo-db-data
export WEB_VOLUME=${PROJECT_NAME}-odoo-web-data

docker compose down

# remove all containers
docker container rm ${PROJECT_NAME}-odoo
docker container rm ${PROJECT_NAME}-db

# remove all volumes
docker volume rm ${DB_VOLUME}
docker volume rm ${WEB_VOLUME}
