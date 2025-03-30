defmodule LearnElixir.Basics.Date do
  def time() do
    _now = Time.utc_now()

    time_today = ~T[19:39:31.056226]

    _today = Date.utc_today()

    date_future = ~D[2028-10-21]

    {:ok, _date_past} = Date.new(2020, 12, 12)

    {:ok, naive_date} = NaiveDateTime.new(date_future, time_today)

    {:ok, date} = DateTime.from_naive(naive_date, "Etc/UTC")

    date
  end
end
