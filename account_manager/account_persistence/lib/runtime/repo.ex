defmodule AccountPersistence.Runtime.Repo do

  use Ecto.Repo,
	otp_app: :account_persistence,
	adapter: Ecto.Adapters.Postgres

end
