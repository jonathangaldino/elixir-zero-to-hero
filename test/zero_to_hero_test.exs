defmodule ZeroToHeroTest do
  use ExUnit.Case
  doctest ZeroToHero

  test "greets the world" do
    assert ZeroToHero.hello() == :world
  end
end
