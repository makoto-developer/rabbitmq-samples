defmodule Receive do
  def wait_for_messages do
    receive do
      {:basic_deliver, payload, _meta} ->
        IO.puts " [x] Received #{payload}"
        wait_for_messages()
    end
  end
end

options = [host: "localhost", port: 5672, virtual_host: "/", username: "online_admin", password: "j87A+0vs24N1A/SQqO593g=="]
{:ok, connection} = AMQP.Connection.open(options)
{:ok, channel} = AMQP.Channel.open(connection)
AMQP.Queue.declare(channel, "hello")
AMQP.Basic.consume(channel, "hello", nil, no_ack: true)
IO.puts " [*] Waiting for messages. To exit press CTRL+C, CTRL+C"

Receive.wait_for_messages()