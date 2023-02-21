## Creating network
```
docker network create py-pg
```
## Building Docker image in `Client/`
```
docker build --rm -t py-pgsql .
```
## Creating container to develop in `/`
```
docker run \
   --rm \
   --network py-pg \
   --hostname py \
   --name py \
   -v $PWD/Client:/home/app \
   -p 8888:8888 \
   -it \
   py-pgsql \
   jupyter notebook --allow-root --no-browser --autoreload --ip=172.19.0.2
```
## Creating Postgres container in `/`
```
docker run \
   --rm \
   --network py-pg \
   --hostname pg \
   --name pg \
   -e POSTGRES_USER=pguser \
   -e POSTGRES_PASSWORD=asd123 \
   -v $PWD/database:/var/lib/postgresql/data \
   -p 5432:5432 \
   postgres:15.2-alpine
```