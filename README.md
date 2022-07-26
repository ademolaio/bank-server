# bank-server

## Check SQLC Migration Version
### migrate  -version
### Create a migrate script migrate create -ext sql -dir db/migration -seq init_schema

### type "docker exec -it Postgres14 /bin/sh" to get into your Postgres docker image

### create your database in the docker image "create --username=root --owner=root simple_bank"  then type "psql simple_bank" to verify that things worked

### In order to create a db without having to go inside the docker image type this, "docker exec -it Postgres14 create --username=root --owner=root simple_bank"
