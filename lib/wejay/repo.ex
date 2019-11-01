defmodule Wejay.Repo do
  use Ecto.Repo,
    otp_app: :wejay,
    adapter: Ecto.Adapters.Postgres
end
