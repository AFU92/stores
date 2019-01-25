defmodule StoresWeb.Router do
  use StoresWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  # Todo lo que se defina dentro del scope (es la url/api) va a quedar continuo.
  scope "/api", StoresWeb do
    pipe_through(:api)

    get("/health", HealthController, :health)
  end
end
