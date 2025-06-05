cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="show cluster setting jobs.retention_time;"
cd ../queries
