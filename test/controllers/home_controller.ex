defmodule Phkite.HomeControllerTest do
  use Phkite.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert conn.status == 200
  end

  test "POST /grab", %{conn: conn} do
    conn = post conn, "/grab"
    assert conn.status == 404
  end
end
