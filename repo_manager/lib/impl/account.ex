defmodule RepoManager.Impl.Account do
	use Ecto.Schema
	import Ecto.Changeset

	@account_fields ~w[email user_name first_name last_name]a
	@timestamps ~w[inserted_at updated_at]a

	schema "acounts" do
		field :email, :string
		field :user_name, :string
		field :first_name, :string
		field :last_name, :string

		timestamps()
	end

	def record_changeset(fields) do
		%__MODULE__{}
		|> cast(fields, @account_fields ++ @timestamps)
		|> validate_required(@account_fields ++ @timestamps)
	end
end
