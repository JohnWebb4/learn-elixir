import LearnElixir.Basics.Basics

defmodule LearnElixir.Basics.BasicsTest do
  use ExUnit.Case, async: true

  test "concat strings" do
    assert concat("Hello", "World") == "HelloWorld"
  end
end
