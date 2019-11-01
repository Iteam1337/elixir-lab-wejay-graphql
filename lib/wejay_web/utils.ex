defmodule Wejay.Utils do
  def create_atoms(string_key_map) do
    for {key, val} <- string_key_map, into: %{}, do: {String.to_atom(key), val}
  end

  def normalize(map) do
    map
    |> Enum.map(fn v -> ProperCase.to_snake_case(v) end)
    |> Enum.map(fn v -> create_atoms(v) end)
  end
end
