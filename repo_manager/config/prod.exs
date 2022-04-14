import Config

config :repo_manager, RepoManager.Runtime.Repo,
        database: "igniteopedia",
        url: System.get_env("DATABASE_URL")
