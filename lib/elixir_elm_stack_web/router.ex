defmodule ElixirElmStackWeb.Router do
  use ElixirElmStackWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirElmStackWeb do
    pipe_through :api
  end

  scope "/", ElixirElmStackWeb do
    get "/", PageController, :index
  end
end
