defmodule LearnElixir.Basics.Collections do
  def list() do
    [1, 2, 3]
  end

  def prepend(list) do
    [:prepend | list]
  end

  def postpend(list) do
    list ++ [:postpend]
  end

  def remove(list) do
    list -- [:remove]
  end

  def pattern(list) do
    [head | rest] = list
    [head, rest]
  end

  def head(list) do
    hd(list)
  end

  def tail(list) do
    tl(list)
  end

  def tuple() do
    # Modification slow
    # Access fast

    {1, 2, 3}
  end

  def keyword_list() do
    # Passing options to functions
    [one: :one, two: :two]
  end

  def map() do
    %{key: :value}
  end
end
