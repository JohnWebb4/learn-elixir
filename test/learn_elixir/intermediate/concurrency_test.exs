import LearnElixir.Intermediate.Concurrency

defmodule LearnElixir.Intermediate.ConcurrencyTest do
  alias LearnElixir.Intermediate.Concurrency
  use ExUnit.Case, async: true

  test "concurrency" do
    spawn_add()

    pid = spawn(Concurrency, :listen, [])

    send(pid, {:ok, "Hello"})
    send(pid, {:ok, "Hola"})

    run()

    monitor()

    assert start_agent() == [1, 2, 3, 4, 5]

    task = start_task()

    assert Task.await(task) == 4_000
  end
end
