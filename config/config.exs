# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :teacher,
  ecto_repos: [Teacher.Repo]

# Configures the endpoint
config :teacher, TeacherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "R+CaZ5BOJDuSOFQYcereIh+SXGJE6jAwU3dUtUBH5V+iSZ1JvvReafpzS/ER5Wxl",
  render_errors: [view: TeacherWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Teacher.PubSub,
  live_view: [signing_salt: "jSTevmhV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
