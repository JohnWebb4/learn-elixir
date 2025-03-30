import LearnElixir.Basics.Strings

defmodule LearnElixir.Basics.StringsTest do
  use ExUnit.Case, async: true

  test "Strings" do
    assert(strings() == "hello\0")

    assert(functions() == "HolloHollo")

    assert(anagrams?("super", "perus"))
  end
end
