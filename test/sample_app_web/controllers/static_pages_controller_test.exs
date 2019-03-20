defmodule SampleAppWeb.StaticPagesControllerTest do
  use SampleAppWeb.ConnCase

  test "GET root path", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Home | Sample App"
  end

  test "GET /signin", %{conn: conn} do
    conn = get conn, "/signin"
    assert html_response(conn, 200) =~ "Sign in | Sample App"
  end

  describe "/static_pages" do
    test "GET /home", %{conn: conn} do
      conn = get conn, "/static_pages/home"
      assert html_response(conn, 200) =~ "Home | Sample App"
    end

    test "GET /help", %{conn: conn} do
      conn = get conn, "/static_pages/help"
      assert html_response(conn, 200) =~ "Help | Sample App"
    end

    test "GET /about", %{conn: conn} do
      conn = get conn, "/static_pages/about"
      assert html_response(conn, 200) =~ "About | Sample App"
    end

    test "GET /contact", %{conn: conn} do
      conn = get conn, "/static_pages/contact"
      assert html_response(conn, 200) =~ "Contact | Sample App"
    end
  end

end
