defmodule DemoPow.Repo do
  use Ecto.Repo,
    otp_app: :demo_pow,
    adapter: Ecto.Adapters.Postgres
end
