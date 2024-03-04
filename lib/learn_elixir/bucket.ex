defmodule LearnElixir.Bucket do
  use Agent

  @doc """
  Starts a new bucket
  """
  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
  Gets a value from `bucket` by `key`
  """
  def get(bucket, key) do
    Agent.get(bucket, fn state ->
      Map.get(state, key)
    end)
  end

  @doc """
  Puts a `value` in `bucket for `key`
  """
  def put(bucket, key, value) do
    Agent.update(bucket, fn state ->
      Map.put(state, key, value)
    end)
  end

  @doc """
  Deletes a value from `bucket` by `key`
  """
  def delete(bucket, key) do
    Agent.update(bucket, fn state ->
      Map.pop(state, key)
    end)
  end
end
