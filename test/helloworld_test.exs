defmodule HelloworldTest do
  use ExUnit.Case
  doctest Helloworld

  test "greets the world" do
    assert Helloworld.hello() === "Hello World in Elixir!"
  end
end
