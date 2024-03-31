defmodule LearnElixir.Basics.BasicsTest do
  use ExUnit.Case, async: true

  test "concat strings" do
    assert LearnElixir.Basics.Basics.concat("Hello", "World") == "HelloWorld"
  end
end
