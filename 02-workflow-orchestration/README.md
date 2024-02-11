# Week-2
Tech stacks:
- Postgres
- pgAdmin
- Mage
- Docker
- Terraform
- GCP: Cloud Storage 

Steps:
1. Prepare VM SSH connection in VS Code, navigate to the project directory
2. Setup docker-compose.yml and Dockerfile for Postgres, pgAdmin, and Mage
3. Setup terraform files to create bucket in GCS
4. `docker-compose up -d` and forward the ports in VS Code
5. `terraform apply` for needed infra
5. Creating pipeline `green_taxi_etl` in Mage as instructed