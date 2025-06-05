cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="SELECT job_id, status,((high_water_timestamp/1000000000)::int::timestamp)-now() as changefeedlatency,created, full_table_names,high_water_timestamp FROM [SHOW CHANGEFEED JOBS] WHERE status in ('running', 'paused','failed','pause-requested') order by changefeedlatency limit 10;"
cd ../queries
