# Elixir

## チュートリアル

https://www.rabbitmq.com/tutorials/tutorial-one-elixir.html


## Trouble shooting

1. 認証エラーが発生する

```text
:auth_failure, ~c"ACCESS_REFUSED - Login was refused using authentication mechanism PLAIN.
```

解決方法

```
options = [host: "localhost", port: 5672, virtual_host: "/", username: "guest", password: "guest"]
{:ok, connection} = AMQP.Connection.open(options)
```

参照

- https://copyprogramming.com/howto/access-refused-login-was-refused-using-authentication-mechanism-amqplain-for-details-see-the-broker-logfile
- https://hexdocs.pm/amqp/AMQP.Connection.html#open/1-examples

