#!/bin/sh
if [ ! -d "/tmp/check" ]; then
  mysql mysql -u root --password=password < /tmp/sample-data/world-db/world.sql
  mysql mysql -u root --password=password < /tmp/sample-data/sakila-db/sakila-schema.sql
  mysql mysql -u root --password=password < /tmp/sample-data/sakila-db/sakila-data.sql
  mysql mysql -u root --password=password < /tmp/sample-data/menagerie-db/cr_event_tbl.sql
  mysql mysql -u root --password=password < /tmp/sample-data/menagerie-db/cr_pet_tbl.sql
  mysql mysql -u root --password=password < /tmp/sample-data/menagerie-db/ins_puff_rec.sql
  mkdir /tmp/check
else
  echo "Data already loaded. Skipping."
fi