#/bin/bash
cd  /dashboard 
virtualenv ./env && ./env/bin/pip install -r pip_requirements.txt -i https://pypi.douban.com/simple
./env/bin/python wsgi.py

cd /tmp/falcon-plus/scripts/mysql/db_schema/
mysql -h 127.0.0.1 -u root -p < 1_uic-db-schema.sql
mysql -h 127.0.0.1 -u root -p < 2_portal-db-schema.sql
mysql -h 127.0.0.1 -u root -p < 3_dashboard-db-schema.sql
mysql -h 127.0.0.1 -u root -p < 4_graph-db-schema.sql
mysql -h 127.0.0.1 -u root -p < 5_alarms-db-schema.sql

cd $WORKSPACE
./open-falcon start
