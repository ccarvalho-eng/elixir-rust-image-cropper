defmodule ImageCropper.Repo do
  use Ecto.Repo,
    otp_app: :image_cropper,
    adapter: Ecto.Adapters.Postgres
end
