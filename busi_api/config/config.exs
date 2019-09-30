# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :busi_api,
  ecto_repos: [BusiApi.Repo]

# Configures the endpoint
config :busi_api, BusiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dPio3sVt8L2yr3K9cPvulHQtGqrGX6BDky3ZCWi8UadGjxey3ZIVncaGBrprm2TU",
  render_errors: [view: BusiApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BusiApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :busi_api, BusiApiWeb.Auth.Guardian,
  issuer: "busi_api",
  secret_key: "qSQQGVxMy/VnyU9Q0vyHWrIomeNOfR4rHDMia9wl7NyfgZ1mHND5je+GO7CsBJ6Z"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
