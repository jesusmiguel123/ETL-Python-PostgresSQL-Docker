Ejecutar la Base de Datos
```
docker run \
   --rm \
   --hostname postgres \
   --name postgres \
   -e POSTGRES_USER=pguser \
   -e POSTGRES_PASSWORD=asd123 \
   -v $PWD/database:/var/lib/postgresql/data \
   -p 5432:5432 \
   postgres:15.2-alpine
```