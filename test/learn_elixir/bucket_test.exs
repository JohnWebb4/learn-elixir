defmodule LearnElixir.BucketTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, bucket} = LearnElixir.Bucket.start_link([])
    %{bucket: bucket}
  end

  test "stores values by key", %{bucket: bucket} do
    assert LearnElixir.Bucket.get(bucket, "milk") == nil

    LearnElixir.Bucket.put(bucket, "milk", 3)
    assert LearnElixir.Bucket.get(bucket, "milk") == 3
  end
end
