defmodule NossoChurrascoWeb.Api.UserView do
  use NossoChurrascoWeb, :view
  alias NossoChurrascoWeb.Api.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, username: user.username, email: user.email, senha: user.senha}
  end

  def render("logado.json", %{user: user}) do
    %{
      username: user.username,
      email: user.email
    }
  end
end
