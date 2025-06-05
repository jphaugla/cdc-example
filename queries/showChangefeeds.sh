cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="SHOW CHANGEFEED JOBS;"
cd ../queries
