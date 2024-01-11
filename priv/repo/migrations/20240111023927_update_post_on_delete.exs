defmodule Amboseli.Repo.Migrations.UpdatePostOnDelete do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      remove :user_id
      add :user_id, references(:users, on_delete: :delete_all)
    end
  end
end
