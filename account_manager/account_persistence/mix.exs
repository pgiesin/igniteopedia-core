defmodule AccountPersistence.MixProject do
  use Mix.Project

  def project do
    [
      app: :account_persistence,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AccountPersistence.Runtime.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:ecto_sql, "~> 3.7"},
       {:postgrex, "~> 0.16.2"}
    ]
  end
end
