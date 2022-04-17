defmodule RepoManager.Runtime.Repo.Migrations.CreateAccounts do
  use Ecto.Migration

  def change do
    execute """
      create sequence global_id_sequence;
      """
    execute """
      CREATE FUNCTION public.id_generator()
      RETURNS bigint
      LANGUAGE 'plpgsql'
    
      AS $BODY$declare
        our_epoch bigint := 1314220021721;
        seq_id bigint;
        now_mills bigint;
        shard_id int := 1;
        result bigint;
 
      begin
        select nextval('global_id_sequence') % 1024 INTO seq_id;
        select floor(extract(EPOCH FROM clock_timestamp()) * 1000) into now_mills;
        result := (now_mills - our_epoch) << 23;
        result := result | (shard_id << 10);
        return result | (seq_id);
      end;$BODY$;
    """
    
    create table(:accounts, primary_key: false) do
      add :id, :bigint, primary_key: true, default: fragment("id_generator()")
      add :email, :string
      add :username, :string
      add :firstname, :string
      add :lastname, :string
      add :password, :string
      add :country, :string
      add :phone, :string
      add :image, :string
      add :status, :string
      add :verify_code, :string

      timestamps(inserted_at: :created_at)
    end

    create unique_index(:accounts, :email)

  end
end
