#/bin/bash
#
# cd /src/falcon-plus/scripts/mysql/db_schema/
# mysql -h 127.0.0.1 -u root -p < 1_uic-db-schema.sql
# mysql -h 127.0.0.1 -u root -p < 2_portal-db-schema.sql
# mysql -h 127.0.0.1 -u root -p < 3_dashboard-db-schema.sql
# mysql -h 127.0.0.1 -u root -p < 4_graph-db-schema.sql
# mysql -h 127.0.0.1 -u root -p < 5_alarms-db-schema.sql
#
# cd /src/open-falcon
# ./open-falcon start
#
# cd  /src/dashboard
# virtualenv ./env
#
# ./env/bin/pip install -r pip_requirements.txt -i https://pypi.douban.com/simple
#
# python wsgi.py

python -m SimpleHTTPServer 9002
