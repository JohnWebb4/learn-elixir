defmodule LearnElixir.Intermediate.Erlang do
  def timed(fun, args) do
    :timer.tc(fun, args)

    # IO.puts("Time: #{time} µs")
    # IO.puts("Result: #{result}")
  end
end
