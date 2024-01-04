defmodule Amboseli.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Amboseli.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        description: "some description",
        title: "some title",
        views: 42
      })
      |> Amboseli.Blog.create_post()

    post
  end
end
