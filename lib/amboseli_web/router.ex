defmodule AmboseliWeb.Router do
  use AmboseliWeb, :router

  import AmboseliWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {AmboseliWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
    plug :fetch_current_uuid
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AmboseliWeb do
    pipe_through :browser

    # resources "/products", ProductController, except: [:create, :delete, :edit, :update]
    # resources "/posts", PostController

    live_session :default,
      layout: {AmboseliWeb.Layouts, :app},
      on_mount: [
        {AmboseliWeb.UserAuth, :mount_current_user},
        Permit.Phoenix.LiveView.AuthorizeHook
      ] do
      live "/products", ProductLive.Index, :index
      live "/products/new", ProductLive.Index, :new
      live "/products/:id/edit", ProductLive.Index, :edit

      live "/products/:id", ProductLive.Show, :show
      live "/products/:id/show/edit", ProductLive.Show, :edit

      live "/posts", PostLive.Index, :index
      live "/posts/new", PostLive.Index, :new
      live "/posts/:id/edit", PostLive.Index, :edit

      live "/posts/:id", PostLive.Show, :show
      live "/posts/:id/show/edit", PostLive.Show, :edit
    end
  end

  scope path: "/feature-flags" do
    pipe_through :browser

    forward "/", FunWithFlags.UI.Router, namespace: "feature-flags"
  end

  # Other scopes may use custom stacks.
  # scope "/api", AmboseliWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:amboseli, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: AmboseliWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end

  ## Authentication routes

  scope "/", AmboseliWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      layout: {AmboseliWeb.Layouts, :login},
      on_mount: [{AmboseliWeb.UserAuth, :redirect_if_user_is_authenticated}] do
      live "/", IntroLive, :index
      live "/login", UserLoginLive, :new
    end

    post "/login", UserSessionController, :send_magic_link

    get "/login/email/token/:token", UserSessionController, :login_with_token
  end

  scope "/", AmboseliWeb do
    pipe_through [:browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{AmboseliWeb.UserAuth, :ensure_authenticated}] do
      live "/home", HomeLive, :index
      live "/account", UserSettingsLive, :edit
      live "/account/confirm_email/:token", UserSettingsLive, :confirm_email
    end
  end

  scope "/", AmboseliWeb do
    pipe_through [:browser]

    delete "/logout", UserSessionController, :delete
  end
end
