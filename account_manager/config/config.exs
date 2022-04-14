import Config

config :account_persistence,
	ecto_repos: [AccountPersistence.Runtime.Repo]

config :logger, level: :info

import_config "#{Mix.env()}.exs"
