defmodule Amboseli.Repo.Migrations.CreateUserProducts do
  use Ecto.Migration

  def change do
    create table(:user_products, primary_key: false) do
      add :id, references(:users, on_delete: :delete_all)
      add :user_id, references(:products, on_delete: :delete_all)
    end

    create index(:user_products, [:user_id])
    create unique_index(:user_products, [:user_id, :id])
  end
end
