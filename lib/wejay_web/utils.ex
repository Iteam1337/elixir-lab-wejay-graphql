defmodule Wejay.Utils do
  def create_atoms(string_key_map) do
    for {key, val} <- string_key_map, into: %{}, do: {String.to_atom(key), val}
  end

  def normalize(map),
    do:
      map
      |> Enum.map(&ProperCase.to_snake_case/1)
      |> Enum.map(&create_atoms/1)
end
