defmodule Wejay.Resolvers.Search do
  alias Wejay.Utils

  def request(query), do: {:ok, Search.get!(query).body.tracks |> Utils.normalize()}

  def search(_, %{query: query}, _), do: request(query)
  def search(_, %{input: %{query: query}}, _), do: request(query)
end
