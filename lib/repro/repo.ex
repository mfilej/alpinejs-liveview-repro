defmodule Repro.Repo do
  use Ecto.Repo,
    otp_app: :repro,
    adapter: Ecto.Adapters.Postgres
end
