defmodule Wejay.Resolvers.Queue do
  alias Wejay.Utils

  def get(_, _),
    do:
      {:ok,
       ["5rq8QoUeKMxvtXu8C6pTwZ", "4fK6E2UywZTJIa5kWnCD6x", "7mJcgjwFTRHTKGGyNuBbOo"]
       |> Enum.map(fn v -> Track.get!(v).body.track end)
       |> Utils.normalize()}
end
