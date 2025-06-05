cd ../docker
# docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="select info_key, min(written), max(written), count(*) from system.job_info group by info_key;"
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="select min(written), max(written), count(*) from system.job_info where info_key like '~dsp-diag-url%' or info_key like 'dsp-diag%';"
cd ../queries
