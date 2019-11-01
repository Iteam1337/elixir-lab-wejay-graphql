defmodule Track do
  use HTTPoison.Base

  def process_request_url(uri) do
    "https://wejay-utils.believer.now.sh/track?uri=" <> uri
  end

  def process_response_body(body) do
    body
    |> Jason.decode!(keys: :atoms)
  end
end

defmodule Search do
  use HTTPoison.Base

  def process_request_url(query) do
    "https://wejay-utils.believer.now.sh/search?q=" <> query
  end

  def process_response_body(body) do
    body
    |> Jason.decode!(keys: :atoms)
  end
end
