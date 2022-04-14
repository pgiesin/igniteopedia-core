import Config

config :repo_manager,
	ecto_repos: [RepoManager.Runtime.Repo]

config :logger, level: :info

import_config "#{Mix.env()}.exs"
