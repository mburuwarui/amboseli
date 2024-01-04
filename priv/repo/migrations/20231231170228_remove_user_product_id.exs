defmodule Amboseli.Repo.Migrations.RemoveUserProductId do
  use Ecto.Migration

  def change do
    alter table(:products) do
      remove :user_id
    end

    drop table(:user_products)
  end
end
