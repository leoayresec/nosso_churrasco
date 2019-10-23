defmodule NossoChurrasco.Repo do
  use Ecto.Repo,
    otp_app: :nosso_churrasco,
    adapter: Ecto.Adapters.Postgres
end
