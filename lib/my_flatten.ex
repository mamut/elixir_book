defmodule MyFlatten do
  @moduledoc "Flattens the received list."

  def flatten([]), do: []

  def flatten(list) do
    Enum.reverse do_flatten(list, [])
  end

  defp do_flatten([], agg), do: agg

  defp do_flatten([head|tail], agg) do
    if is_list(head) do
      do_flatten(tail, do_flatten(head, agg))
    else
      do_flatten(tail, [head | agg])
    end
  end
end
