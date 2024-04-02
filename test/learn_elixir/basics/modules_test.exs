defmodule LearnElixir.Basics.ModulesTest do
  use ExUnit.Case, async: true

  alias LearnElixir.Basics.Modules

  test "test modules" do
    assert Modules.hello_world("Sean") == "Yo! Hello Sean."

    assert %Modules{} == %Modules{name: "Sean", roles: []}
  end
end
