defmodule TodoBackendPhoenix.Router do
  use Phoenix.Router

  pipeline :api do
    plug CORSPlug
  end

  scope "/" do
    pipe_through :api

    get "/", TodoBackendPhoenix.PageController, :index, as: :pages
    options "/", TodoBackendPhoenix.PageController, :index, as: :pages
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
