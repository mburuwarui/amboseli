defmodule AmboseliWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, components, channels, and so on.

  This can be used in your application as:

      use AmboseliWeb, :controller
      use AmboseliWeb, :html

  The definitions below will be executed for every controller,
  component, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define additional modules and import
  those modules here.
  """

  def static_paths,
    do:
      ~w(assets fonts images favicon.ico apple-touch-icon.png favicon-32x32.png favicon-16x16.png safari-pinned-tab.svg site.webmanifest robots.txt)

  def router do
    quote do
      use Phoenix.Router, helpers: false

      # Import common connection and controller functions to use in pipelines
      import Plug.Conn
      import Phoenix.Controller
      import Phoenix.LiveView.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
    end
  end

  def controller do
    quote do
      use Phoenix.Controller,
        formats: [:html, :json],
        layouts: [html: AmboseliWeb.Layouts]

      import Plug.Conn
      import AmboseliWeb.Gettext

      unquote(verified_routes())
    end
  end

  def live_view do
    quote do
      use Phoenix.LiveView,
        layout: {AmboseliWeb.Layouts, :app}

      use Permit.Phoenix.LiveView,
        authorization_module: Amboseli.Authorization

      @impl true
      def fetch_subject(socket, _session) do
        IO.inspect(socket.assigns.current_user, label: "Current User")

        case socket.assigns.current_user do
          nil ->
            assign(socket, :current_user, nil)

          _ ->
            socket.assigns.current_user
        end
      end

      unquote(html_helpers())

      def ok(socket), do: {:ok, socket}
      def noreply(socket), do: {:noreply, socket}
    end
  end

  def live_component do
    quote do
      use Phoenix.LiveComponent
      def ok(socket), do: {:ok, socket}
      def noreply(socket), do: {:noreply, socket}

      unquote(html_helpers())
    end
  end

  def html do
    quote do
      use Phoenix.Component

      # Import convenience functions from controllers
      import Phoenix.Controller,
        only: [get_csrf_token: 0, view_module: 1, view_template: 1]

      # Include general helpers for rendering HTML
      unquote(html_helpers())
    end
  end

  defp html_helpers do
    quote do
      # HTML escaping functionality
      import Phoenix.HTML
      # Core UI components and translation
      import AmboseliWeb.CoreComponents
      import AmboseliWeb.Gettext

      # Shortcut for generating JS commands
      alias Phoenix.LiveView.JS

      # Routes generation with the ~p sigil
      unquote(verified_routes())
    end
  end

  def verified_routes do
    quote do
      use Phoenix.VerifiedRoutes,
        endpoint: AmboseliWeb.Endpoint,
        router: AmboseliWeb.Router,
        statics: AmboseliWeb.static_paths()
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
