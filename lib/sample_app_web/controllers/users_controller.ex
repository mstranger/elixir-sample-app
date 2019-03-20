defmodule SampleAppWeb.UsersController do
  use SampleAppWeb, :controller

  def new(conn, _params) do
    render conn, "new.html", page_title: "Sign in"
  end
end
