postgres:
	docker run --name Postgres14 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:14-alpine

createdb:
	docker exec -it Postgres14 create --username=root --owner=root simple_bank

dropdb:
	docker exec -it Postgres14 drop simple_bank

stopdb:
	docker stop Postgres14

startdb:
	docker start Postgres14

removedb:
	docker rm Postgres14

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose down

.PHONY: postgres create dropdb stopdb startdb removedb migrateup migratedown

