defmodule Phkite.HomeController do
  use Phkite.Web, :controller

  # Get "/"
  # Return homepage
  def index(conn, _params) do
    render conn, "index.html"
  end

  # POST "/grab"
  # Handle error with no parameters
  def grab(conn, _params)  do
    conn |> put_status(404) |> render("error.html")
  end

end
