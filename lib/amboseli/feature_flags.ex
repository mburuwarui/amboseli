defimpl FunWithFlags.Actor, for: Amboseli.Catalog.Product do
  def id(%{id: id}) do
    "product:#{id}"
  end
end

defimpl FunWithFlags.Group, for: Amboseli.Catalog.Product do
  def in?(%{views: views}, "show_views"),
    do: views > 36
end
