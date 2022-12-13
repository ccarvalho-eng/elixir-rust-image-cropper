defmodule ImageCropperWeb.ImageController do
  use ImageCropperWeb, :controller

  alias ImageCropper.Graphics.Image

  def index(conn, _params) do
    changeset = Image.changeset(%Image{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"image" => image_params}) do
    changeset = Image.changeset(%Image{}, image_params)

    if changeset.valid? do
      %{file: %{path: path}} = changeset.changes
      %{x: x, y: y, width: width, height: height} = changeset.changes

      image_buffer = File.read!(path)

      image_b64 =
        image_buffer
        |> ImageCropper.crop_and_grayscale(x, y, width, height)
        |> Base.encode64()

      render(conn, "show.html", image_src: "data:image/png;base64,#{image_b64}")
    else
      render(conn, "new.html", changeset: changeset)
    end
  end
end
