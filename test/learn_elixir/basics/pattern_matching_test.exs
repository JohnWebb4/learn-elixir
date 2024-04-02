import LearnElixir.Basics.PatternMatching

defmodule LearnElixir.Basics.PatternMatchingTest do
  use ExUnit.Case, async: true

  test "Pattern Matching" do
    assert pin_tupple({:hi, 1}) == :hi
    assert pin_map(%{:key => :value}) == :value

    assert pin_function("hi", "yo") == "Other hi yo"
    assert pin_function("Hello", "Name") == "Greetings! Name!"
  end
end
