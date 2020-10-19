defmodule Helloworld do
  @moduledoc """
  Provides a function `hello/0` to say hello to the world!
  """

  @spec hello() :: String.t()
  def hello do
    "Hello World in Elixir!"
  end
end
