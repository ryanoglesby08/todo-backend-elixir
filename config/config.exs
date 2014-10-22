# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, TodoBackendPhoenix.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "WsFFOxEde+P7W5h19wCnIGkaDdig5Z2oH5QixchRRQGb0N2XaysVV/SejWAzjxMsg7VXBbS/5boKmlMeTfH9wg==",
  catch_errors: true,
  debug_errors: false,
  error_controller: TodoBackendPhoenix.PageController

# Session configuration
config :phoenix, TodoBackendPhoenix.Router,
  session: [store: :cookie,
            key: "_todo_backend_phoenix_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
