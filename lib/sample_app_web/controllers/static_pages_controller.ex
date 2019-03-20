defmodule SampleAppWeb.StaticPagesController do
  use SampleAppWeb, :controller

  def home(conn, _params) do
    render conn, "home.html", page_title: "Home"
  end

  def help(conn, _params) do
    render conn, "help.html", page_title: "Help"
  end

  def about(conn, _params) do
    render conn, "about.html", page_title: "About"
  end
end
