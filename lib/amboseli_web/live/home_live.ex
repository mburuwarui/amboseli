defmodule AmboseliWeb.HomeLive do
  use AmboseliWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <h1 class="mb-4 text-3xl dark:text-white font-bold underline">Amboseli</h1>
    <.button phx-click={JS.dispatch("toggle-darkmode")}>
      Dark Mode
    </.button>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
