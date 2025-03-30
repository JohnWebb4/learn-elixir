defmodule LearnElixir.Basics.Strings do
  def strings() do
    s = <<104, 101, 108, 108, 111>>
    s <> <<0>>
  end

  def functions() do
    String.duplicate(String.replace("Hello", "e", "o"), 2)
  end

  def anagrams?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
