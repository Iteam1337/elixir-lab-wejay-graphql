defmodule Wejay.Resolvers.Search do
  alias Wejay.Utils

  def request(query) do
    tracks = Search.get!(query).body.tracks |> Utils.normalize()

    {:ok, tracks}
  end

  def search(_parent, %{query: query}, _resolution), do: request(query)
  def search(_parent, %{input: %{query: query}}, _resolution), do: request(query)
end
