defmodule RepoManager.MixProject do
  use Mix.Project

  def project do
    [
      app: :repo_manager,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RepoManager.Runtime.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:ecto_sql, "~> 3.7"},
       {:postgrex, "~> 0.16.2"},
       {:bcrypt_elixir, "~> 2.0"},
    ]
  end

  defp aliases do
   [
     "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"],
     test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"],
   ]
  end
end
