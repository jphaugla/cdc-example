cd ../docker
docker-compose exec roach-source /cockroach/cockroach sql --insecure --execute="select * from [show all cluster settings] where variable like '%job%reten%';"
cd ../queries
