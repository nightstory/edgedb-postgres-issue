export PGPASSWORD=postgres
export COMPOSE_PROJECT_NAME=edgedb-postgres-compose

postgres:
	docker compose up edgedb-postgres --wait

edgedb:
	docker compose up --detach edgedb --wait

setup:
	psql --dbname=postgres --username=postgres --host=localhost --port=5432 --file=setup.sql

cleanup:
	docker compose down --remove-orphans --volumes

run: postgres setup edgedb