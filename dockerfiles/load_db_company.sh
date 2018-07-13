
#!/bin/bash
echo "Start loading data for company"
mysql -uroot -pdeveloper --default-character-set=utf8 < /init-data/init_db.sql
mysql -uroot -pdeveloper company --default-character-set=utf8 < /init-data/data_company.sql
# execute all *.sql inside the project folder
for d in /init-data/project/*.sql ; do
        mysql -udeveloper -pdeveloper < "$d"
done