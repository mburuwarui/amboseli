defmodule AmboseliWeb.HomeLive do
  use AmboseliWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Hero.hero />
    <Cards.cards />
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket, layout: {AmboseliWeb.Layouts, :home}}
  end
end
