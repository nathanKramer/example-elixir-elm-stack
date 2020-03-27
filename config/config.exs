# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_elm_stack,
  ecto_repos: [ElixirElmStack.Repo]

# Configures the endpoint
config :elixir_elm_stack, ElixirElmStackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/rBsstEjcRJTJpnE/B1S9vVSQSlT0peA8M7PQ4PiIJAGTXloCdclZEpb8VSyGjYx",
  render_errors: [view: ElixirElmStackWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElixirElmStack.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "50BLFeyt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
