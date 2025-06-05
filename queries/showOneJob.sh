JOBID=$1
cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="SELECT * FROM system.job_info WHERE job_id=${JOBID} AND info_key='legacy_payload';"
cd ../queries
