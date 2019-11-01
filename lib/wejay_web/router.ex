defmodule WejayWeb.Router do
  use WejayWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WejayWeb do
    pipe_through :api
  end

  forward "/graphql",
          Absinthe.Plug,
          schema: Wejay.Schema,
          json_codec: Jason

  forward("/graphiql", Absinthe.Plug.GraphiQL,
    schema: Wejay.Schema,
    interface: :simple,
    json_codec: Jason
  )
end
