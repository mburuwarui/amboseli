defmodule AmboseliWeb.PageController do
  use AmboseliWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> put_layout(html: :map)
    |> render(:home)
  end
end
