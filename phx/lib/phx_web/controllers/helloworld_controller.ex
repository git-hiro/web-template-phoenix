defmodule PhxWeb.HelloworldController do
  use PhxWeb, :controller

  action_fallback PhxWeb.FallbackController

  def index(conn, _params) do
    render(conn, "index.json", text: "hello world")
  end
end
