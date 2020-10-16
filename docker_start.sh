docker-compose up -d
sleep 5
cat data/user.sql | docker exec -i dev_site_mysql_1 mysql -u'root' -p'password'
#cat data/sait.sql |pv | docker exec -i dev_site_mysql_1 mysql -u'root' -p'password' --init-command="SET autocommit=0  sait;"
cat data/sait.sql |pv | docker exec -i dev_site_mysql_1 mysql -u'root' sait -p'password'
