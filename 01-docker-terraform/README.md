# Week-1
Tech stacks:
- Postgres
- pgAdmin
- Docker
- Terraform
- GCP: Cloud Storage and BigQuery

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