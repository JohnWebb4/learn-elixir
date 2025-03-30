defmodule LearnElixir.Basics.Comprehensions do
  def lists() do
    list = [1, 2, 3, 4]
    for x <- list, do: x * x
  end

  def keyword_lists() do
    for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val
  end

  def into do
    for {k, v} <- [one, 1, two: 2, three: 3], into: %{}, do: {k, v}
  end
end
