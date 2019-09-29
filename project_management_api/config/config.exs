# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_management_api,
  ecto_repos: [ProjectManagementApi.Repo]

# Configures the endpoint
config :project_management_api, ProjectManagementApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d68TQ7ERj6tW+D+b8Vkg1tQkLryc3TrFzjGuNILUyF/hVn9F+5U/sgdScj9s0gtx",
  render_errors: [view: ProjectManagementApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProjectManagementApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

config :phoenix, :format_encoders,
  "json-api": Poison

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
