defmodule Amboseli.Repo do
  use Ecto.Repo,
    otp_app: :amboseli,
    adapter: Ecto.Adapters.Postgres
end
