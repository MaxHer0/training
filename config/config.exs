# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :site,
  ecto_repos: [Site.Repo]

# Configures the endpoint
config :site, SiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vJ76nz8ELaf6mRxFM9XSNSgdh2NOCHwqknMOgFN9t0SWerFn4xgRENGywsBISNwZ",
  render_errors: [view: SiteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Site.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
