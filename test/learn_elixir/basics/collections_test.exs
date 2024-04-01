import LearnElixir.Basics.Collections

defmodule LearnElixir.Basics.CollectionsTest do
  use ExUnit.Case, async: true

  test "collections" do
    assert list() == [1, 2, 3]
    assert prepend([:something]) == [:prepend, :something]
    assert postpend([:something]) == [:something, :postpend]
    assert remove([:remove, :keep]) == [:keep]
    assert pattern([:head, :other, :other]) == [:head, [:other, :other]]
    assert head([1, :other]) === 1
    assert tail([:something, 2]) == [2]

    assert tuple() == {1, 2, 3}

    assert keyword_list() == [one: :one, two: :two]

    assert map() == %{key: :value}
  end
end
