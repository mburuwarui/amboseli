defmodule AmboseliWeb.UserSettingsLive do
  use AmboseliWeb, :live_view

  alias Amboseli.Accounts
  alias Amboseli.Repo

  @impl true
  def render(assigns) do
    ~H"""
    <.header class="text-center">
      Account Settings
      <:subtitle>Manage your account settings</:subtitle>
    </.header>

    <div class="space-y-12 divide-y">
      <div>
        <.simple_form
          for={@email_form}
          id="email_form"
          phx-submit="update_email"
          phx-change="validate_email"
        >
          <div>
            <div class="block text-sm font-semibold leading-6 text-zinc-800 dark:text-zinc-300">
              Current Email
            </div>
            <div class="text-sm dark:text-zinc-400"><%= @current_user.email %></div>
          </div>
          <.input field={@email_form[:email]} type="email" label="New Email" required />
          <:actions>
            <.button phx-disable-with="Changing...">Change Email</.button>
          </:actions>
        </.simple_form>
      </div>
    </div>
    <div class="mt-6">
      <div class="block text-md font-semibold leading-6 text-zinc-800 dark:text-zinc-300">
        Blog Posts
      </div>

      <%= for post <- @current_user.posts do %>
        <div class="mt-1 text-sm dark:text-zinc-400">
          <%= post.title %>
        </div>
      <% end %>
    </div>

    <div class="mt-6">
      <div class="block text-md font-semibold leading-6 text-zinc-800 dark:text-zinc-300">
        Products Catalog
      </div>

      <%= for product <- @current_user.products do %>
        <div class="mt-1 text-sm dark:text-zinc-400">
          <%= product.title %>
        </div>
      <% end %>
    </div>
    """
  end

  @impl true
  def mount(%{"token" => token}, _session, socket) do
    socket =
      case Accounts.update_user_email(socket.assigns.current_user, token) do
        :ok ->
          put_flash(socket, :info, "Email changed successfully.")

        :error ->
          put_flash(socket, :error, "Email change link is invalid or it has expired.")
      end

    {:ok, push_navigate(socket, to: ~p"/account")}
  end

  def mount(_params, _session, socket) do
    user =
      socket.assigns.current_user
      |> Repo.preload(:posts)
      |> Repo.preload(:products)

    email_changeset = Accounts.change_user_email(user)

    socket =
      socket
      |> assign(:current_email, user.email)
      |> assign(:current_user, user)
      |> assign(:email_form, to_form(email_changeset))
      |> assign(:trigger_submit, false)

    {:ok, socket}
  end

  @impl true
  def handle_event("validate_email", params, socket) do
    %{"user" => user_params} = params

    email_form =
      socket.assigns.current_user
      |> Accounts.change_user_email(user_params)
      |> Map.put(:action, :validate)
      |> to_form()

    {:noreply, assign(socket, email_form: email_form)}
  end

  def handle_event("update_email", params, socket) do
    %{"user" => user_params} = params
    user = socket.assigns.current_user

    case Accounts.apply_user_email(user, user_params) do
      {:ok, applied_user} ->
        Accounts.deliver_user_update_email_instructions(
          applied_user,
          user.email,
          &url(~p"/account/confirm_email/#{&1}")
        )

        info = "A link to confirm your email change has been sent to the new address."
        {:noreply, socket |> put_flash(:info, info)}

      {:error, changeset} ->
        {:noreply, assign(socket, :email_form, to_form(Map.put(changeset, :action, :insert)))}
    end
  end
end
