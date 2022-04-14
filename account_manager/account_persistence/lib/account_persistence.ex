defmodule AccountPersistence do

  import Ecto.Query, only: [from: 2]
  alias AccountPersistence.Impl.Account
  alias AccountPersistence.Runtime.Repo

  def record_account(account, in_transaction \\ fn _account -> :ok end) do
    {:ok, result} = Repo.transction(fn ->
	%{
		email: to_string(account.email),
		user_name: to_string(account.user_name),
		first_name: to_string(account.first_name),
		last_name: to_string(account.last_name),
		inserted_at: account.timestamp,
		updated_at: account.timestamp
	}
	|> Account.record_changeset
	|> Repo.insert!
	in_transaction.(account)
	end)
	result
  end
end
