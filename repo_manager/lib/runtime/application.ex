defmodule RepoManager.Runtime.Application do

  use Application

  @impl true
  def start(_type, _args) do
    children = [
        RepoManager.Runtime.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RepoManager.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
