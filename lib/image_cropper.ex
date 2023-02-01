defmodule ImageCropper do
  @moduledoc """
  ImageCropper keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  use Rustler, otp_app: :image_cropper, crate: "imagecropper"

  @spec add(integer(), integer()) :: integer()
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)

  @spec crop_and_grayscale(
          binary(),
          non_neg_integer(),
          non_neg_integer(),
          non_neg_integer(),
          non_neg_integer()
        ) :: binary()
  def crop_and_grayscale(image, x, y, width, height), do: :erlang.nif_error(:nif_not_loaded)
end
