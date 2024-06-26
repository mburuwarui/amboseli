defmodule Amboseli.Repo.Migrations.AddUserProductId do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :user_id, references(:users, on_delete: :delete_all)
    end
  end
end
