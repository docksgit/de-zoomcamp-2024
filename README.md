# Data Engineering Zoomcamp 2024 Repository

This repo is built to store any necessity codes and files for Data Engineering Zoomcamp 2024 walkthrough. 

To join and access detailed materials, please see [Data Engineering Zoomcamp Repo](https://github.com/DataTalksClub/data-engineering-zoomcamp).

## Week-1
Steps:
1. Turn on the VM and get the external IP
2. Place the IP to `config` file in `.ssh` folder
3. Connect VM via SSH in VSCode (suggested) or CMD via `ssh de-zoomcamp` as `config` file
4. Navigate to the VM directory 
5. Setup docker-compose with `docker-compose up -d`
6. Add necessary port to forward (e.g. 5432 for Postgres, 8080 for pgAdmin, 8888 for Jupyter Notebook)
6. Quick check to Postgres via local with activated .venv `pgcli -h localhost -p 5432 -u root -d ny_taxi`
7. Detailed check to Postgress via pgAdmin in localhost:8080
8. Terraform setup and apply

## Week-2
Tech stacks:
- Postgres
- pgAdmin
- Mage
- Docker
- Terraform
- GCP: Cloud Storage and BigQuery \
Steps:
1. Prepare VM SSH connection in VS Code
2. Setup docker-compose.yml and Dockerfile for Postgres, pgAdmin, and Mage
3. Setup terraform files to create bucket in GCS
4. `docker-compose up -d` and forward the ports in VS Code
5. `terraform apply` for needed infra
5. Creating pipeline `green_taxi_etl` in Mage as instructed

