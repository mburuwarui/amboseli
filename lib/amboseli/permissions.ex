defmodule Amboseli.Permissions do
  alias Amboseli.Catalog.Product
  alias Amboseli.Accounts.User
  alias Amboseli.Blog.Post
  use Permit.Permissions, actions_module: Permit.Phoenix.Actions

  # A user will be able

  def can(%User{id: user_id}) do
    permit()
    |> all(Product, user_id: user_id)
    |> read(Post, user_id: user_id)
  end
end
