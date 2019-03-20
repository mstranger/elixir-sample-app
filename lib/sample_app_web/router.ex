defmodule SampleAppWeb.Router do
  use SampleAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SampleAppWeb do
    pipe_through :browser

    # get "/", PageController, :index
    get "/", StaticPagesController, :home, as: :root
  end

  scope "/static_pages", SampleAppWeb do
    pipe_through :browser

    get "/home", StaticPagesController, :home
    get "/help", StaticPagesController, :help
    get "/about", StaticPagesController, :about
  end

  # Other scopes may use custom stacks.
  # scope "/api", SampleAppWeb do
  #   pipe_through :api
  # end
end
