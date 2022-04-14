defmodule AccountPersistence.Runtime.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
	add :email, :string, null: false
	add :user_name, :string, null: false
	add :first_name, :string, null: false
	add :last_name, :string, null: false

	timestamps()
    end

    create index(:accounts, :email)
  end
end
