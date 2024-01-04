defmodule Amboseli.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Amboseli.Users` context.
  """

  def unique_user_email, do: "user#{System.unique_integer()}@amboseli.com"

  def valid_user_attributes(attrs \\ %{}) do
    Enum.into(attrs, %{
      email: unique_user_email()
    })
  end

  # Suggestion: rename this to create_test_user, it's not a fixture!
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> valid_user_attributes()
      |> Amboseli.Users.register_user()

    user
  end

  def extract_user_token(fun) do
    {:ok, captured_email} = fun.(&"[TOKEN]#{&1}[TOKEN]")
    [_, token | _] = String.split(captured_email.text_body, "[TOKEN]")
    token
  end
end
