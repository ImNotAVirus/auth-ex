defmodule Supabase.GoTrue.ServerHealthFixture do
  @moduledoc """
  Server health fixture for GoTrue. This module provides functions to generate server health fixtures.
  """

  alias Supabase.GoTrue.Schemas.ServerHealth

  def server_health_fixture(attrs \\ %{}) do
    default = %{
      version: "1.0.0",
      name: "GoTrue",
      description: "GoTrue is a secure and easy way to add authentication to your web or mobile applications."
    }

    attrs
    |> Map.new()
    |> Enum.into(default)
    |> then(&struct(ServerHealth, &1))
  end

  def server_health_fixture_json(attrs \\ %{}) do
    attrs
    |> server_health_fixture()
    |> Jason.encode!()
  end
end
