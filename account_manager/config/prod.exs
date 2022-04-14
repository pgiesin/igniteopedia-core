import Config

config :account_persistence, AccountPersistence.Runtime.Repo,
        database: "igniteopedia",
        ssl: true,
        url: System.get_env("DATABASE_URL")

