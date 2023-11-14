options = [host: "localhost", port: 5672, virtual_host: "/", username: "online_admin", password: "j87A+0vs24N1A/SQqO593g=="]

{:ok, connection} = AMQP.Connection.open(options)
{:ok, channel} = AMQP.Channel.open(connection)
AMQP.Queue.declare(channel, "order")
AMQP.Basic.publish(channel, "", "order", %{""})
IO.puts " [x] Sent 'Hello World!'"
AMQP.Connection.close(connection)