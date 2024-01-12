defmodule AmboseliWeb.ProductLive.Show do
  use AmboseliWeb, :live_view

  alias Amboseli.Catalog

  use Permit.Phoenix.LiveView,
    authorization_module: Amboseli.Authorization,
    resource_module: Amboseli.Catalog.Product

  def fetch_subject(socket, _session), do: socket.assigns.current_user.id

  @impl true
  def mount(_params, _session, socket) do
    current_user = socket.assigns.current_user
    socket = assign(socket, :current_user, current_user)
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(
       :product,
       id
       |> Catalog.get_product!()
       |> Catalog.inc_page_views()
     )}
  end

  defp page_title(:show), do: "Show Product"
  defp page_title(:edit), do: "Edit Product"
end
