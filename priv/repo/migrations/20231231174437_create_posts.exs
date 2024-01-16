defmodule Amboseli.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :description, :string
      add :body, :text
      add :views, :integer, default: 0, null: false
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:posts, [:user_id])
  end
end
