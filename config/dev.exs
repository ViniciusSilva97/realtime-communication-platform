import Config

# Configure your database
config :realtime_platform, RealtimePlatform.Repo,
  username: System.fetch_env!("DATABASE_USER"),
  password: System.fetch_env!("DATABASE_PASSWORD"),
  hostname: System.get_env("DATABASE_HOST", "localhost"),
  database: System.fetch_env!("DATABASE_NAME"),
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we can use it
# to bundle .js and .css sources.
config :realtime_platform, RealtimePlatformWeb.Endpoint,
  # Bind to 0.0.0.0 to expose the server to the docker host machine.
  # This makes the service accessible from any network interface.
  # Change to `ip: {127, 0, 0, 1}` to allow access only from the server machine.
  http: [ip: {0, 0, 0, 0}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE"),
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:realtime_platform, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:realtime_platform, ~w(--watch)]}
  ]

# Enable dev routes for dashboard and mailbox
config :realtime_platform, dev_routes: true

config :logger, :default_formatter, format: "[$level] $message\n"
config :phoenix, :stacktrace_depth, 20
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  debug_heex_annotations: true,
  debug_attributes: true,
  enable_expensive_runtime_checks: true

config :swoosh, :api_client, false
