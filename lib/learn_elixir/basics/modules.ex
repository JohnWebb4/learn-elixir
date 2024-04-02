defmodule LearnElixir.Basics.ModuleUsing do
  defmacro __using__(opts) do
    greeting = Keyword.get(opts, :greeting, "Hi!")

    quote do
      def hello() do
        unquote(greeting) <> " "
      end
    end
  end
end

defmodule LearnElixir.Basics.Modules do
  use LearnElixir.Basics.ModuleUsing, greeting: "Yo!"

  @moduledoc """
  This documnets the module
  """

  @greeting "Hello"

  @doc """
  This documents the hello function

  """
  def hello_world(name) do
    hello() <> ~s(#{@greeting} #{name}.)
  end

  @derive {Inspect, only: [:name]}
  defstruct name: "Sean", roles: []
end
