import LearnElixir.Advanced.OtpConcurrency

defmodule LearnElixir.Advanced.OtpConcurrencyTest do
  alias LearnElixir.Advanced.OtpConcurrency.SimpleQueue
  use ExUnit.Case, async: true

  test "concurrency" do
    SimpleQueue.start_link([1, 2, 3])

    assert SimpleQueue.dequeue() == 1
    assert SimpleQueue.dequeue() == 2

    assert SimpleQueue.enqueue(4)

    assert SimpleQueue.queue() == [3, 4]
  end
end
