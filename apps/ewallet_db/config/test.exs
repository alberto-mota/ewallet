use Mix.Config

config :ewallet_db, EWalletDB.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "ewallet_test_db",
  username: "postgres",
  password: "sdff37382",
  hostname: "localhost",
  port: "5432"

config :ewallet_db,
  base_url: System.get_env("BASE_URL") || "http://example.com"

# Uncomment this line to hide database requests when running tests
config :logger, level: :warn

key = "j6fy7rZP9ASvf1bmywWGRjrmh8gKANrg40yWZ-rSKpI"

config :cloak, Salty.SecretBox.Cloak,
       tag: "SBX",
       default: true,
       keys: [%{tag: <<1>>, key: key, default: true}]
