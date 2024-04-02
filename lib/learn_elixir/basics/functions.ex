defmodule LearnElixir.Basics.Functions do
  def anonymous(a, b) do
    sum = fn a1, b1 -> a1 + b1 end
    short_sum = &(&1 + &2)

    pattern_sum = fn
      1, hi -> "Something: " <> Integer.to_string(hi)
      _, _ -> "Default"
    end

    %{
      sum: sum.(a, b),
      short_sum: short_sum.(a, b),
      pattern_sum: pattern_sum.(a, b)
    }
  end

  # Number of arguments can change
  def overload(a, hi \\ 5)
  def overload(1, hi), do: "Overloaded: " <> Integer.to_string(hi)
  def overload(:error, hi), do: "Error: " <> Integer.to_string(hi)

  # defp private_overload(), do: "Private"
end
