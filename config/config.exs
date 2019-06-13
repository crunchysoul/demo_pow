# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :demo_pow,
  ecto_repos: [DemoPow.Repo]

# Configures the endpoint
config :demo_pow, DemoPowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u38oxdf+W0gHZxBZ1PEEPN/sP60wx4/0aZWNpNiWX88XeuzZj7qAxv53xKIiA6t0",
  render_errors: [view: DemoPowWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemoPow.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Use Pow for auth
config :demo_pow, :pow,
  user: DemoPow.Accounts.User,
  repo: DemoPow.Repo,
  extensions: [PowResetPassword, PowEmailConfirmation],
  controller_callbacks: Pow.Extension.Phoenix.ControllerCallbacks,
  mailer_backend: DemoPowWeb.PowMailer

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
