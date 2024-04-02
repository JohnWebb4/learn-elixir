import LearnElixir.Basics.ControlStructures

defmodule LearnElixir.Basics.ControlStructuresTest do
  use ExUnit.Case, async: true

  test "test control structures" do
    assert do_conditionals("Anything else") == true
    assert do_conditionals(nil) == false

    assert do_case(:a) == "A"
    assert do_case(1) == "One"
    assert do_case("other") == "Default"

    assert do_cond(2) == "Two"
    assert do_cond(3) == "Three"
    assert do_cond(4) == "Default"

    assert do_with(%{first: "Sean", last: "Callan"}) == "Callan,Sean"
    assert do_with(%{first: "Sean"}) == "Some error"
  end
end
