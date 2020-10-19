defmodule Wordcount do
  @moduledoc """
  Provides a function to count the occurrences of each word in that phrase

  ## Examples

    iex> Wordcount.count("olly olly in come free")
    "olly: 2
    in: 1
    come: 1
    free: 1"
  """
  @spec count(String.t()) :: any()
  def count(word) do
    word
    |> String.split(" ")
    |> Enum.reduce(%{}, fn w, acc ->
      case acc do
        %{^w => count} -> %{acc | w => count + 1}
        _ -> Map.put(acc, w, 1)
      end
    end)
  end
end
