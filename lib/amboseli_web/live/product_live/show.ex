defmodule AmboseliWeb.ProductLive.Show do
  use AmboseliWeb, :live_view

  alias Amboseli.Catalog

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
     |> assign(:product, Catalog.get_product!(id))}
  end

  defp page_title(:show), do: "Show Product"
  defp page_title(:edit), do: "Edit Product"
end
