import LearnElixir.Basics.Functions

defmodule LearnElixir.Basics.FunctionsTest do
  use ExUnit.Case, async: true

  test "test functions" do
    assert anonymous(1, 2) == %{
             sum: 3,
             short_sum: 3,
             pattern_sum: "Something: 2"
           }

    assert overload(1, 2) == "Overloaded: 2"
    assert overload(:error) == "Error: 5"
    assert overload(1) == "Overloaded: 5"
  end
end
