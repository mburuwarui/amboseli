defmodule Amboseli.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias Amboseli.Catalog.Category
  alias Amboseli.Users.User

  schema "products" do
    field :description, :string
    field :title, :string
    field :price, :decimal
    field :views, :integer

    belongs_to :user, User

    many_to_many :categories, Category, join_through: "product_categories", on_replace: :delete

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:title, :description, :price, :views, :user_id])
    |> validate_required([:title, :description, :price, :views, :user_id])
  end
end
