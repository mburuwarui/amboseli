defmodule AmboseliWeb.UserLoginLive do
  use AmboseliWeb, :live_view

  alias Amboseli.Accounts

  @impl true
  def mount(_params, _session, socket) do
    email = live_flash(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")

    socket =
      socket
      |> assign(form: form)
      |> assign(:status, :not_sent)

    {:ok, socket, temporary_assigns: [form: form]}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div :if={@status == :not_sent} class="mx-auto max-w-md">
      <.header class="text-center">
        Sign in to account
        <:subtitle>No password needed - we'll send you an email!</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="magic_link_form"
        action={~p"/login"}
        phx-update="ignore"
        phx-submit="send-magic-link"
        class="my-0 py-0"
      >
        <.input field={@form[:email]} type="email" placeholder="Enter email" required />
        <:actions>
          <.button
            class="w-full flex place-content-center place-items-center gap-2"
            phx-disable-with="Sending email..."
          >
            Send me a link <.icon name="hero-envelope" />
          </.button>
        </:actions>
      </.simple_form>
    </div>

    <div :if={@status == :sent} class="mx-auto">
      <div>
        <main class="flex items-center justify-center px-8 py-8 sm:px-12 lg:col-span-7 lg:px-16 lg:py-12 xl:col-span-6">
          <div class="max-w-xl lg:max-w-3xl">
            <div class="flex flex-row">
              <h1 class="text-center mt-1 pr-2 text-2xl font-bold text-gray-900 dark:text-white sm:text-3xl md:text-4xl">
                Check your email!
              </h1>
              <img src={~p"/images/email.svg"} width="46" />
            </div>

            <p class="text-center mt-4 leading-relaxed text-gray-500 dark:text-gray-400">
              We sent you a link to sign in.
            </p>
          </div>
        </main>
      </div>
      <!-- <.header class="text-center"> -->
      <!--   Check your email! -->
      <!--   <:subtitle> -->
      <!--     We sent you a link to sign in. -->
      <!--   </:subtitle> -->
      <!-- </.header> -->
    </div>
    """
  end

  @impl true
  def handle_event("send-magic-link", params, socket) do
    %{"user" => %{"email" => email}} = params

    Accounts.login_or_register_user(email)

    socket =
      socket
      |> Phoenix.LiveView.put_flash(
        :info,
        "We've sent an email to #{email}, with a one-time sign-in link."
      )
      |> assign(:status, :sent)

    {:noreply, socket}
  end
end
