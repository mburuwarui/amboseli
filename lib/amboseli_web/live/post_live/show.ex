defmodule AmboseliWeb.PostLive.Show do
  use AmboseliWeb, :live_view

  alias Amboseli.Blog
  alias Amboseli.Blog.Post

  @impl true
  def resource_module, do: Post

  @impl true
  def mount(_params, _session, socket) do
    current_user = socket.assigns.current_user

    socket = assign(socket, :current_user, current_user)
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    socket
    |> assign(:page_title, page_title(socket.assigns.live_action))
    |> assign(
      :post,
      id
      |> Blog.get_post!()
      |> Blog.inc_page_views()
    )
    |> noreply()
  end

  def handle_unauthorized(socket) do
    {:halt,
     socket
     |> put_flash(:error, "No permission to perform this action")
     |> push_redirect(to: socket.view.fallback_path())}
  end

  defp page_title(:show), do: "Show Post"
  defp page_title(:edit), do: "Edit Post"
end
