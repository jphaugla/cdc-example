cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="WITH x AS (SHOW CHANGEFEED JOBS) SELECT job_id FROM x WHERE status='running';"
cd ../queries
