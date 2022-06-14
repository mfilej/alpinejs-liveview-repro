defmodule ReproWeb.PageController do
  use ReproWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
