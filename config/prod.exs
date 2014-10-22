use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, TodoBackendPhoenix.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "WsFFOxEde+P7W5h19wCnIGkaDdig5Z2oH5QixchRRQGb0N2XaysVV/SejWAzjxMsg7VXBbS/5boKmlMeTfH9wg=="

config :logger, :console,
  level: :info
