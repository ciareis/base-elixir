# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :ciareis, CiareisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tfSmi+3VxymDLd52cUjIgzviKFglEB7BoWOp05hkJF9W8aJxKnshEuW3gNy1BnpW",
  render_errors: [view: CiareisWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Ciareis.PubSub,
  live_view: [signing_salt: "kkudJUCm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
