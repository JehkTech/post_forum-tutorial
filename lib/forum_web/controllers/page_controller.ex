defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
  def users(conn, _params) do
    IO.puts("Users fi=unction hit!")
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 2, name: "Mark", email: "mark@email.com"}
    ]
    # render(conn, :users, users: users, layout: false)
    json(conn, %{users: users})
  end
end
