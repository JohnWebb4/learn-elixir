import LearnElixir.Basics.Date

defmodule LearnElixir.Basics.DateTest do
  use ExUnit.Case, async: true

  test "test" do
    assert time() == ~U[2028-10-21 19:39:31.056226Z]
  end
end
