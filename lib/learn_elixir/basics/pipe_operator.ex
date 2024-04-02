defmodule LearnElixir.Basics.PipeOperator do
  def pipe(a) do
    a |> String.split() |> List.first() |> String.upcase() |> String.starts_with?("HE")
  end
end
