# avro-schema-registry

Docker image containing Salsify's [avro-schema-registry](https://github.com/salsify/avro-schema-registry)

You can specify the Postgres connection details with the `DATABASE_URL` environment variable. For example, if you are using the [official Postgres image](https://hub.docker.com/_/postgres/), try:

	DATABASE_URL=postgres://postgres:postgres@postgres/postgres
