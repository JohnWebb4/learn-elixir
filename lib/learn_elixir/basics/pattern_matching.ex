defmodule LearnElixir.Basics.PatternMatching do
  def pin_tupple(tupple) do
    x = 1
    {x, ^x} = tupple

    x
  end

  def pin_map(map) do
    key = :key

    %{^key => value} = map

    value
  end

  def pin_function(a, b) do
    greeting = "Hello"

    greet = fn
      ^greeting, name -> "Greetings! #{name}!"
      a, b -> "Other #{a} #{b}"
    end

    greet.(a, b)
  end
end
