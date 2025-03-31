defmodule LearnElixir.Advanced.OtpSupervisors.Application do
  alias LearnElixir.Advanced.OtpSupervisors

  use Application

  def start(_type, _args) do
    options = [
      name: OtpSupervisors.Supervisor,
      strategy: :one_for_one
    ]

    DynamicSupervisor.start_link(options)
  end
end
