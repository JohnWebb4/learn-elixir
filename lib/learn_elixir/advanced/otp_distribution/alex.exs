defmodule LearnElixir.Advanced.OtpDistribution.Alex do
  def main do
    Node.spawn_link(:kate@localhost, fn -> Kate.say_name() end)
  end
end
