defmodule ImageCropperWeb.ImageController do
  use ImageCropperWeb, :controller

  alias ImageCropper.Graphics.Image

  def index(conn, _params) do
    changeset = Image.changeset(%Image{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"image" => image_params}) do
    changeset = Image.changeset(%Image{}, image_params)
    render(conn, "new.html", changeset: changeset)
  end
end
