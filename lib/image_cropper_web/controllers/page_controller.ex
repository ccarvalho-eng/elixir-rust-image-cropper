defmodule ImageCropperWeb.PageController do
  use ImageCropperWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
