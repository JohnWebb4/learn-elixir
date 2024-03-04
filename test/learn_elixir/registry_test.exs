defmodule LearnElixir.RegistryTest do
  use ExUnit.Case, async: true

  setup do
    registry = start_supervised!(LearnElixir.Registry)
    %{registry: registry}
  end

  test "spawn buckets", %{registry: registry} do
    assert LearnElixir.Registry.lookup(registry, "shopping") == :error

    LearnElixir.Registry.create(registry, "shopping")
    {:ok, bucket} = LearnElixir.Registry.lookup(registry, "shopping")

    LearnElixir.Bucket.put(bucket, "milk", 1)
    assert LearnElixir.Bucket.get(bucket, "milk") == 1
  end
end
