defmodule RNATranscriptionTest do
  use ExUnit.Case
  doctest RNATranscription

  # @tag :pending
  test "transcribes guanine to cytosine" do
    assert RNATranscription.transcript('G') == 'C'
  end

  test "transcribes cytosine to guanine" do
    assert RNATranscription.transcript('C') == 'G'
  end

  test "transcribes thymine to adenine" do
    assert RNATranscription.transcript('T') == 'A'
  end

  test "transcribes adenine to uracil" do
    assert RNATranscription.transcript('A') == 'U'
  end

  test "transcribes a DNA to RNA" do
    assert RNATranscription.transcript('CGAT') == 'GCUA'
  end
end
