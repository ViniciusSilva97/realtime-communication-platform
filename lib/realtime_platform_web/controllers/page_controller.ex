defmodule RealtimePlatformWeb.PageController do
  use RealtimePlatformWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
