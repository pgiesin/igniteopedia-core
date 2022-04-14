import Config

config :account_persistence, AccountPersistence.Runtime.Repo,
	database: "igniteopedia_test",
	hostname: "localhost",
        username: "postgres",
        password: "hipm3fvn",
	pool: Ecto.Adapters.SQL.Sandbox
