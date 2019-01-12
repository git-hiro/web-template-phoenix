defmodule PhxWeb.HelloworldController do
  use PhxWeb, :controller
  use PhoenixSwagger

  action_fallback PhxWeb.FallbackController

  swagger_path :index do
    get("/api/helloworld")
    summary("Hello World")
    description("")
    produces("application/json")
    deprecated(false)
    response(200, "OK")
  end

  def index(conn, _params) do
    render(conn, "index.json", text: "hello world")
  end
end
