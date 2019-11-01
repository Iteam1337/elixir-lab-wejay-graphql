defmodule Wejay.Resolvers.Queue do
  alias Wejay.Utils

  def get(_parent, _args) do
    tracks =
      ["5rq8QoUeKMxvtXu8C6pTwZ", "4fK6E2UywZTJIa5kWnCD6x", "7mJcgjwFTRHTKGGyNuBbOo"]
      |> Enum.map(fn v -> Track.get!(v).body.track end)
      |> Utils.normalize()

    {:ok, tracks}
  end
end
