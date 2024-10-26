# RabbitMQ Docker

## Requirement

- Docker Hub Account

## Getting Start

1. Docker-Compose up needs a `.env` file. copy from example file.

```shell
cp .env.example .env
```

2. Change ports, management login user name, password, if you need.

```shell
vi .env
```

3. Docker starts.

```shell
docker compose up -d
```

## RabbitMQ Management UI

http://localhost:15672
