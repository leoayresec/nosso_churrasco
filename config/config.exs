# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nosso_churrasco,
  ecto_repos: [NossoChurrasco.Repo]

# Configures the endpoint
config :nosso_churrasco, NossoChurrascoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "txRj/dnUeHTZvjvASQ+aDwrVGtsUTREb4Uc+8XduphJh/BJSsl0YgiJ/pNqTCqi/",
  render_errors: [view: NossoChurrascoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: NossoChurrasco.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
