import LearnElixir.Intermediate.Error

defmodule LearnElixir.Intermediate.ErrorTest do
  alias LearnElixir.Intermediate.Error.LearnElixir.Intermediate.Error.ExampleError

  use ExUnit.Case, async: true

  test "error" do
    try do
      error()
    rescue
      e in ExampleError ->
        assert e.message == "Hello World!"
    after
      # IO.puts("HIII")
    end
  end
end
