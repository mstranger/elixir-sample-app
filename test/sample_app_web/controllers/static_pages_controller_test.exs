defmodule SampleAppWeb.StaticPagesControllerTest do
  use SampleAppWeb.ConnCase

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
  end

end
