# Data Engineering Zoomcamp 2024 Repository

This repo is built to store any necessity codes and files for Data Engineering Zoomcamp 2024 walkthrough. 

To join and access detailed materials, please see [Data Engineering Zoomcamp Repo](https://github.com/DataTalksClub/data-engineering-zoomcamp).

## Week-1
Tech stacks:
- Postgres
- pgAdmin
- Docker
- Terraform
- GCP: Cloud Storage and BigQuery \
\
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
- GCP: Cloud Storage \
\
Steps:
1. Prepare VM SSH connection in VS Code
2. Setup docker-compose.yml and Dockerfile for Postgres, pgAdmin, and Mage
3. Setup terraform files to create bucket in GCS
4. `docker-compose up -d` and forward the ports in VS Code
5. `terraform apply` for needed infra
5. Creating pipeline `green_taxi_etl` in Mage as instructed

## Week-3
Tech stacks:
- Bash Script
- Mage
- Docker
- Terraform
- GCP: Cloud Storage and BigQuery 

Data:
[NYC Green Taxi 2022](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page) 

Steps:
1. Create `raw_data_urls.txt` and `download_raw_data.sh`, then give permission `chmod +x download_raw_data.sh` to download parquet data into local (See [reference](https://github.com/toddwschneider/nyc-taxi-data/tree/master))
2. Build `mageai/mageai:latest` Docker Image, then construct `docker-compose.yml` file
3. (NEXT UP) Setup Terraform to manage GCS bucket and BigQuery dataset
4. (NEXT UP) Create pipeline on Mage (try download the parquet files via data_loader API template too if possible) to load data into GCS bucket (See [reference](https://www.nyc.gov/assets/tlc/downloads/pdf/working_parquet_format.pdf))