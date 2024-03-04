defmodule LearnElixir.RegistryTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, registry} = GenServer.start_link(LearnElixir.Registry, :ok)
    %{registry: registry}
  end

  test "stores values by key", %{registry: registry} do
    assert GenServer.call(registry, {:lookup, "shopping"}) == :error

    GenServer.cast(registry, {:create, "shopping"})

    {:ok, bucket} = GenServer.call(registry, {:lookup, "shopping"})
    assert bucket != nil
  end
end
