defmodule Amboseli.Repo.Migrations.ChangeAuthorToUserInPosts do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      remove :author_id
      add :user_id, references(:users, on_delete: :delete_all)
    end
  end
end
