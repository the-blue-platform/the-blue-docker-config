#!/bin/bash
echo "Start loading initial data"
mysql -uroot -pdeveloper --default-character-set=utf8 < /init-data/init_db.sql
# execute all *.sql inside the project folder
for d in /init-data/project/*.sql ; do
        mysql -udeveloper -pdeveloper < "$d"
done