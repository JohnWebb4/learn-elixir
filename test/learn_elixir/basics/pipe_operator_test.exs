import LearnElixir.Basics.PipeOperator

defmodule LearnElixir.Basics.PipeOperatorTest do
  use ExUnit.Case, async: true

  test "test pipe operator" do
    assert pipe("Hello World") == true
  end
end
