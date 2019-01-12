defmodule PhxWeb.HelloworldView do
  use PhxWeb, :view

  def render("index.json", %{text: text}) do
    %{message: text}
  end

end
