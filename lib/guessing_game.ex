defmodule GuessingGame do
  @moduledoc """
  Provides a guessing game by using `guess/2` to guess a number
  """

  def guess(a, b) when a > b, do: guess(b, a)

  @doc """
  Guess a number between low and high

  ## Parameters

    - low: Integer that represents the lowest the guessed number can be
    = high: Integer that represents the highest the guessed number can be

  ## Examples

    iex> GuessingGame.guess(1, 50)
    "Hm... maybe you're thinking of 30?"
    bigger
    Hm... maybe you're thinking of 42?
    smaller
    Hm... maybe you're thinking of 35?
    yes
    I knew I could guess your number.
  """
  @spec guess(integer, integer) :: integer
  def guess(low, high) do
    answer = IO.gets("Hmm... maybe you're thinking of #{mid(low, high)}?\n")

    case String.trim(answer) do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "I knew I could guess your number."
      _ ->
          IO.puts ~s{Type "bigger", "smaller" or "yes"}
          guess(low, high)
    end
  end

  @spec mid(integer, integer) :: integer
  def mid(low, high) do
    div(low + high, 2)
  end

  @spec bigger(integer, integer) :: integer
  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end
end
