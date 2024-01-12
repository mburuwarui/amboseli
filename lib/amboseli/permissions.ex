defmodule Amboseli.Permissions do
  alias Amboseli.Catalog.Product
  alias Amboseli.Accounts.User
  use Permit.Permissions, actions_module: Permit.Phoenix.Actions

  # A user will be able

  def can(%User{id: user_id}),
    do: permit() |> read(Product) |> all(Product, user_id: user_id)
end
