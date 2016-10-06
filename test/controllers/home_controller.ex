defmodule Phkite.HomeControllerTest do
  use Phkite.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert conn.status == 200
  end
end
