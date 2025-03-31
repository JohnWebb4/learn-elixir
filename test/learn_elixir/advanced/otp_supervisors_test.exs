import LearnElixir.Advanced.OtpSupervisors

defmodule LearnElixir.Advanced.OtpSupervisorsTest do
  alias LearnElixir.Advanced.OtpSupervisors.Application
  alias LearnElixir.Advanced.OtpSupervisors
  use ExUnit.Case, async: true

  test "supervisors" do
    Application.start(:type, [])

    {:ok, pid} = DynamicSupervisor.start_child(OtpSupervisors.Supervisor, OtpSupervisors)

    assert OtpSupervisors.queue() == []
  end
end
