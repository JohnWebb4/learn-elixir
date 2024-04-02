import LearnElixir.Basics.Enum

defmodule LearnElixir.Basics.EnumTest do
  use ExUnit.Case, async: true

  test "test enums" do
    assert enums([0, 1, 2, 3, 4, 5, 6]) == %{
             all: true,
             any: true,
             chunk_by: [[0, 1, 2], [3, 4, 5, 6]],
             chunk_every: [[0, 1], [2, 3], [4, 5], [6]],
             each: :ok,
             filter: [0, 2, 4, 6],
             map: [2, 3, 4, 5, 6, 7, 8],
             map_every: [1000, 1, 2, 1003, 4, 5, 1006],
             max: 6,
             min: 0,
             reduce: 21,
             sort: [0, 1, 2, 3, 4, 5, 6],
             uniq: [0, 1, 2, 3, 4, 5, 6]
           }
  end
end
