defmodule Wejay.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :track do
    field :album_name, non_null(:string)
    field :artist, non_null(:string)
    field :cover, :string
    field :duration, non_null(:integer)
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :release_date, :string
    field :uri, non_null(:string)
  end

  input_object :search_input do
    field :query, :string
  end
end

