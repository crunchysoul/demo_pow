defmodule DemoPowWeb.PageController do
  use DemoPowWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
