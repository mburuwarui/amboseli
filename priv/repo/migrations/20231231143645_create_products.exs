defmodule Amboseli.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :description, :string
      add :price, :decimal, precision: 15, scale: 6, null: false
      add :views, :integer, default: 0, null: false
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:products, [:user_id])
  end
end
