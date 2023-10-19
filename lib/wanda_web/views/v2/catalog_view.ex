defmodule WandaWeb.V2.CatalogView do
  use WandaWeb, :view

  alias Wanda.Catalog.Check

  def render("catalog.json", %{catalog: catalog}) do
    %{items: render_many(catalog, WandaWeb.V2.CatalogView, "check.json", as: :check)}
  end

  def render("check.json", %{check: %Check{} = check}), do: check
end
