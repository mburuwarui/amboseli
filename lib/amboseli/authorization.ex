defmodule Amboseli.Authorization do
  use Permit.Ecto,
    permissions_module: Amboseli.Permissions,
    repo: Amboseli.Repo
end
