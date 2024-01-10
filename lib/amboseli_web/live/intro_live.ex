defmodule AmboseliWeb.IntroLive do
  use AmboseliWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Intro.intro />
    """
  end

  @impl true
  def mount(_params, session, socket) do
    current_user = Map.get(session, "current_user")

    socket = assign(socket, :current_user, current_user)
    {:ok, socket, layout: {AmboseliWeb.Layouts, :map}}
  end
end
