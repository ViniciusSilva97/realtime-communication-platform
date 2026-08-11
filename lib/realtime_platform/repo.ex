defmodule RealtimePlatform.Repo do
  use Ecto.Repo,
    otp_app: :realtime_platform,
    adapter: Ecto.Adapters.Postgres
end
