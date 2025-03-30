import LearnElixir.Intermediate.Erlang

defmodule LearnElixir.Intermediate.ErlangTest do
  use ExUnit.Case, async: true

  test "timed" do
    assert timed(fn n -> n * n end, [100]) == {0, 10_000}
  end
end
