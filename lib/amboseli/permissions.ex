defmodule Amboseli.Permissions do
  alias Amboseli.Catalog.Product
  alias Amboseli.Accounts.User
  alias Amboseli.Blog.Post
  use Permit.Ecto.Permissions, actions_module: Permit.Phoenix.Actions

  def can(%User{id: user_id}) do
    permit()
    |> all(Product, user_id: user_id)
    |> read(Product)
    |> all(Post, user_id: user_id)
    |> read(Post)
  end

  def can(_), do: permit()
end
