defmodule Mix.Tasks.Hello do
  @moduledoc """
  The hello mix task: `mix help hello`
  """
  use Mix.Task

  @shortdoc "Calls the Hello.say/0 function"
  def run(_) do
    # calling the Hello.say() function from earlier
    Mix.Task.run("app.start")

    Hello.say()
  end
end
