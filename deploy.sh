#!/bin/bash

export $(grep -v '^#' enviroment.env | xargs -0)
export $(grep -v '^#' postgres.env | xargs -0)
export $(grep -v '^#' odoo.env | xargs -0)
export DB_VOLUME=${PROJECT_NAME}-odoo-db-data
export WEB_VOLUME=${PROJECT_NAME}-odoo-web-data
export DATABASE_NAME=${PROJECT_NAME}-db

docker volume create --name "${DB_VOLUME}"
docker volume create --name "${WEB_VOLUME}"

docker compose -p ${PROJECT_NAME} up --build
