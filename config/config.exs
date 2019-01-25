# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stores,
  ecto_repos: [Stores.Repo]

# Configures the endpoint
config :stores, StoresWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3jtoKEbPifEuV9bYnQlz6XvWW4Imi3NWngcZnDuv5D4bU29xn38dxQawgKBpGFxL",
  render_errors: [view: StoresWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Stores.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
