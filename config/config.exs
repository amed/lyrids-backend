# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lyrids_backend,
  ecto_repos: [LyridsBackend.Repo]

# Configures the endpoint
config :lyrids_backend, LyridsBackend.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EXKyoXvIJZsonpNRl1RD2scn3HQqyL5aC6rh5ozQeAjaggk+hYKoxxH2dSYFXQrt",
  render_errors: [view: LyridsBackend.ErrorView, accepts: ~w(json)],
  pubsub: [name: LyridsBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
