defmodule Phkite.HomeView do
  use Phkite.Web, :view

  def decode_url(uri) do
    URI.decode(uri)
  end
end
