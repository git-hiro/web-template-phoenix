defmodule PhxWeb.Router do
  use PhxWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", PhxWeb do
    pipe_through(:api)

    resources("/helloworld", HelloworldController, only: [:index])
  end

  scope "/api/swagger" do
    forward("/", PhoenixSwagger.Plug.SwaggerUI, otp_app: :phx, swagger_file: "swagger.json")
  end

  def swagger_info do
    %{
      info: %{
        version: "0.9",
        title: "ApiTemplate Phoenix"
      }
    }
  end
end
