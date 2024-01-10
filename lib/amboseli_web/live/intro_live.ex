defmodule AmboseliWeb.IntroLive do
  use AmboseliWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Intro.intro />
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket, layout: {AmboseliWeb.Layouts, :map}}
  end
end
