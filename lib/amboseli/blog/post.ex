defmodule Amboseli.Blog.Post do
  alias Amboseli.Accounts.User
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :description, :string
    field :title, :string
    field :body, :string
    field :views, :integer

    belongs_to :user, User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :description, :body, :views, :user_id])
    |> validate_required([:title, :description, :body, :views, :user_id])
  end
end
