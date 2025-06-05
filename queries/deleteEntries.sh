cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="DELETE FROM system.job_info WHERE info_key LIKE 'dsp-diag-url-%' OR info_key LIKE '~dsp-diag-url-%' LIMIT 10;"
cd ../queries
