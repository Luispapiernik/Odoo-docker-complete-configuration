# Odoo-docker-complete-configuration

Complete example of a odoo configuration using docker with an isolated database and persistent volumes.

## About use
To put everything into operation, the following steps must be taken:
    
   1. For each project only the value of the `PROJECT_NAME` environment variable in the environment file must be changed.
   2. The volumes corresponding to the databases and all containers are started by executing the deploy.sh script.

## Clean up
To remove all volumes and containers you must run the clean script
