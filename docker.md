pg_ctl -D /var/lib/postgresql/data -l logfile start

docker ps

psql --list
psql --dbname=wooly

Backup DB:
psql wooly > wooly.sql -U postgres -h localhost
Restore DB:
psql wooly < wooly.sql -U postgres -h localhost

CREATE USER postgres SUPERUSER;
CREATE DATABASE postgres WITH OWNER postgres;

brew install postgres
brew services start postgresql
initdb /usr/local/var/postgres
pg_ctl -D /usr/local/var/postgres start

psql -U postgres -h localhost

createuser postgres --interactive
createuser postgres -s

createuser -s -U \$USER

docker exec -it yournamecontainer psql -U postgres
