cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="SHOW JOBS;"
cd ../queries
