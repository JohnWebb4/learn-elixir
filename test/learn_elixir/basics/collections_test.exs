defmodule LearnElixir.Basics.CollectionsTest do
  use ExUnit.Case, async: true

  test "collections" do
    assert LearnElixir.Basics.Collections.list() == [1, 2, 3]
    assert LearnElixir.Basics.Collections.prepend([:something]) == [:prepend, :something]
    assert LearnElixir.Basics.Collections.postpend([:something]) == [:something, :postpend]
    assert LearnElixir.Basics.Collections.remove([:remove, :keep]) == [:keep]
    assert LearnElixir.Basics.Collections.filter([:should, :not, :keep, :this]) == [:keep, :this]
    assert LearnElixir.Basics.Collections.head([1, :other]) === 1
    assert LearnElixir.Basics.Collections.tail([:something, 2]) == [2]

    assert LearnElixir.Basics.Collections.tuple() == { 1, 2, 3}

    assert LearnElixir.Basics.Collections.keyword_list() == [one: :one, two: :two]

    assert LearnElixir.Basics.Collections.map() == %{key: :value}
  end
end
