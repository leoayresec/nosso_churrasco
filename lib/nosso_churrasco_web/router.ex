defmodule NossoChurrascoWeb.Router do
  use NossoChurrascoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NossoChurrascoWeb do
    pipe_through :api
    resources "/users", UserController
    post "/login", UserController, :login
  end
end
