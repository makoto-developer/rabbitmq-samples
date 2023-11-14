defmodule OnlineShopTest do
  use ExUnit.Case
  doctest OnlineShop

  test "greets the world" do
    assert OnlineShop.hello() == :world
  end
end
