defmodule LearnElixir.Intermediate.Error do
  alias LearnElixir.Intermediate.Error.LearnElixir.Intermediate.Error.ExampleError

  defmodule LearnElixir.Intermediate.Error.ExampleError do
    defexception message: "an example error has occured"
  end

  def error do
    raise ExampleError, message: "Hello World!"
  end
end
