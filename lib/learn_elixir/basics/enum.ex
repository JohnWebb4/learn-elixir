defmodule LearnElixir.Basics.Enum do
  def filter_even(x) do
    rem(x, 2) == 0
  end

  def enums(list) do
    %{
      all: Enum.all?(list),
      any: Enum.any?(list),
      chunk_by: Enum.chunk_by(list, fn x -> x < 3 end),
      chunk_every: Enum.chunk_every(list, 2),
      each: Enum.each(list, fn _x -> :something end),
      filter: Enum.filter(list, &filter_even/1),
      map: Enum.map(list, &(&1 + 2)),
      map_every: Enum.map_every(list, 3, fn x -> x + 1_000 end),
      max: Enum.max(list),
      min: Enum.min(list),
      reduce: Enum.reduce(list, fn x, acc -> x + acc end),
      sort: Enum.sort(list),
      uniq: Enum.uniq(list)
    }
  end
end
