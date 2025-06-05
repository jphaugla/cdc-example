cd ../docker
echo "really make sure you want to do this.  Better to change the retention setting job.retention_time and wait"
echo "before doing this, open a support ticket"
# docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="DELETE FROM system.job_info WHERE info_key LIKE 'dsp-diag-url-%' OR info_key LIKE '~dsp-diag-url-%' LIMIT 10;"
cd ../queries
