defmodule AmboseliWeb.ProductController do
  use AmboseliWeb, :controller

  alias Amboseli.Catalog
  alias Amboseli.Catalog.Product

  def index(conn, _params) do
    user = conn.assigns.current_user
    products = Catalog.list_products(user)
    render(conn, :index, products: products)
  end

  def new(conn, _params) do
    changeset = Catalog.change_product(%Product{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"product" => product_params}) do
    product_params = Map.put(product_params, "user_id", conn.assigns.current_user.id)

    case Catalog.create_product(product_params) do
      {:ok, product} ->
        conn
        |> put_flash(:info, "Product created successfully.")
        |> redirect(to: ~p"/products/#{product}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    product =
      id
      |> Catalog.get_product!()
      |> Catalog.inc_page_views()

    render(conn, :show, product: product)
  end

  def edit(conn, %{"id" => id}) do
    product = Catalog.get_product!(id)
    changeset = Catalog.change_product(product)
    render(conn, :edit, product: product, changeset: changeset)
  end

  def update(conn, %{"id" => id, "product" => product_params}) do
    product = Catalog.get_product!(id)
    user = conn.assigns.current_user

    with :ok <- Bodyguard.permit(Catalog, :update_product, user, product),
         {:ok, updated_product} <- Catalog.update_product(product, product_params) do
      conn
      |> put_flash(:info, "Product updated successfully.")
      |> redirect(to: ~p"/products/#{updated_product}")
    else
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, product: product, changeset: changeset)

      _ ->
        conn
        |> put_flash(:error, "Permission denied.")
        |> redirect(to: ~p"/products/#{product}")
    end
  end

  def delete(conn, %{"id" => id}) do
    product = Catalog.get_product!(id)
    user = conn.assigns.current_user

    with :ok <- Bodyguard.permit(Catalog, :delete_product, user, product),
         {:ok, _product} = Catalog.delete_product(product) do
      conn
      |> put_flash(:info, "Product deleted successfully.")
      |> redirect(to: ~p"/products")
    else
      _ ->
        conn
        |> put_flash(:error, "Permission denied.")
        |> redirect(to: ~p"/products")
    end
  end
end
