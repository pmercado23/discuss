# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eiWScj6pOzbIq2YlDDS7IJ0v6T/+tBrtVPaQZdISR/gkk/qldMWI5Mj0/3j5uz55",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
       providers: [
         github: {Ueberauth.Strategy.Github, []}
       ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
       client_id: "33ccf95bc6dbd4b7b533",
       client_secret: "1ee758fd1ca3e093ab46e621c7d04d1a6751333a"
