defmodule RepoManager.Runtime.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    create table(:accounts) do
      add :email, :string
      add :user_name, :string
      add :first_name, :string
      add :last_name, :string

      timestamps(inserted_at: :created_at)
    end

    create unique_index(:accounts, :email)

  end
end
