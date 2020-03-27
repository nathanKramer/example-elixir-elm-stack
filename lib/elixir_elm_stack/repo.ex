defmodule ElixirElmStack.Repo do
  use Ecto.Repo,
    otp_app: :elixir_elm_stack,
    adapter: Ecto.Adapters.Postgres
end
