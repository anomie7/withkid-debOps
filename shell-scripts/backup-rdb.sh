DATE=`date +%d`
CONTAINER="withkid-rdb"
DATABASE="with-kid"
GZIP=`which gzip`
BACKUP_FOLDER="/opt/mysql/backup"

FILE=$BACKUP_FOLDER/backup-$DATE.sql.gz

docker exec -u root $CONTAINER /usr/bin/mysqldump -u root --password=1234 --single-transaction $DATABASE | $GZIP -9 > $FILE

# Backup
# docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

# Restore
# cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE
