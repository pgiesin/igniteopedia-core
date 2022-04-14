defmodule AccountPersistence.Runtime.Application do

  use Application

  @impl true
  def start(_type, _args) do
    children = [
        AccountPersistence.Runtime.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AccountPersistence.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
