cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="set cluster setting jobs.retention_time = '48h';"
cd ../queries
