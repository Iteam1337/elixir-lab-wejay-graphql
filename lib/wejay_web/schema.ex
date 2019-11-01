defmodule Wejay.Schema do
  use Absinthe.Schema

  alias Wejay.Utils
  alias Wejay.Resolvers

  import_types(Wejay.Schema.DataTypes)

  query do
    @desc "Get queue"
    field :queue, non_null(list_of(non_null(:track))) do
      resolve(&Resolvers.Queue.get/2)
    end

    @desc "Search Spotify API"
    field :search, non_null(list_of(non_null(:track))) do
      arg(:query, non_null(:string))

      resolve(&Resolvers.Search.search/3)
    end
  end

  mutation do
    @desc "Search Spotify API"
    field :search, non_null(list_of(non_null(:track))) do
      arg(:input, non_null(:search_input))

      resolve(&Resolvers.Search.search/3)
    end
  end
end
