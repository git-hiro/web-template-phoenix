defmodule PhoenixWeb.Router do
  use PhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixWeb do
    pipe_through :api
  end
end
