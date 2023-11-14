# RabbitMQ Docker

## Getting Start

Docker-Compose up needs a `.env` file. copy from example file.

```shell
cp .env.example .env
```

Change ports, management user, password, if you need.

```shell
vi .env
```

Docker starts.

```shell
docker compose up -d
```

## RabbitMQ Management UI

http://localhost:15672
