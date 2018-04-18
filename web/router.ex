defmodule LyridsBackend.Router do
  use LyridsBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LyridsBackend do
    pipe_through :api
  end
end
