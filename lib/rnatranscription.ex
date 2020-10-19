defmodule RNATranscription do
  @moduledoc """
  Provides a function `transcript/1` to transcript DNA to RNA
  Following:

  G -> C | C -> G | T -> A | A -> U

  ## Parameters
    - nucleotide: String that represents the DNA transcription

  ## Examples

    iex> RNATranscription.transcript('GCTA')
    'CGAU'
  """

  @dna_to_rna_map %{
    # `G` -> `C`
    71 => 67,

    # `C` -> `G`
    67 => 71,

    # `T` -> `A`
    84 => 65,

    # `A` -> `U`
    65 => 85
  }

  @spec transcript([char]) :: [char]
  def transcript(nucleotide) do
    nucleotide
    |> Enum.map(fn char ->
        Map.get(@dna_to_rna_map, char)
    end)
  end
end
