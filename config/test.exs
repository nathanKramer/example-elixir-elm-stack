use Mix.Config

# Configure your database
config :elixir_elm_stack, ElixirElmStack.Repo,
  username: "postgres",
  password: "postgres",
  database: "elixir_elm_stack_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_elm_stack, ElixirElmStackWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
