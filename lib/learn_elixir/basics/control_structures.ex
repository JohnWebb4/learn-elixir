defmodule LearnElixir.Basics.ControlStructures do
  def do_conditionals(a) do
    if a do
      true
    else
      false
    end
  end

  def do_case(a) do
    case a do
      :a -> "A"
      1 -> "One"
      _ -> "Default"
    end
  end

  def do_cond(a) do
    cond do
      a + 2 == 4 ->
        "Two"

      a * 2 == 6 ->
        "Three"

      true ->
        "Default"
    end
  end

  def do_with(a) do
    with {:ok, first} <- Map.fetch(a, :first),
         {:ok, last} <- Map.fetch(a, :last) do
      last <> "," <> first
    else
      :error -> "Some error"
      _ -> "Default"
    end
  end
end
