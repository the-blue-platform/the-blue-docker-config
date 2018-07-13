
#!/bin/bash
echo "Start loading data for news"
mysql -uroot -pdeveloper --default-character-set=utf8 < /init-data/init_db.sql
mysql -uroot -pdeveloper news --default-character-set=utf8 < /init-data/data_news.sql
# execute all *.sql inside the project folder
for d in /init-data/project/*.sql ; do
        mysql -udeveloper -pdeveloper < "$d"
done