defmodule LearnElixir.Intermediate.Concurrency do
  alias LearnElixir.Intermediate.Concurrency

  def explode() do
    exit(:kaboom)
  end

  def run do
    Process.flag(:trap_exit, true)

    spawn_link(Concurrency, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

  def monitor do
    spawn_monitor(Concurrency, :explode, [])

    receive do
      {:DOWN, _ref, :process, _from_pid, reason} ->
        IO.puts("Monitor Exit reason: #{reason}")
    end
  end

  def start_agent do
    Agent.start_link(fn -> [1, 2, 3] end, name: Numbers)

    Agent.update(Numbers, fn state -> state ++ [4, 5] end)

    Agent.get(Numbers, & &1)
  end

  def double(x) do
    :timer.sleep(10)

    2 * x
  end

  def start_task do
    Task.async(Concurrency, :double, [2_000])
  end

  def listen() do
    receive do
      {:ok, a} ->
        IO.puts("#{a} World")
    end

    listen()
  end

  def add(a, b) do
    IO.puts(a + b)
  end

  def spawn_add() do
    spawn(Concurrency, :add, [2, 3])
  end
end
