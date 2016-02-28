defmodule Flatten do
  def flatten([]), do: []
  def flatten(list) do
    Enum.reverse do_flatten(list, [])
  end
  def do_flatten([], agg), do: agg
  def do_flatten([head|tail], agg) do
    if is_list(head) do
      do_flatten(tail, do_flatten(head, agg))
    else
      do_flatten(tail, [head | agg])
    end
  end
end

IO.inspect Flatten.flatten([])
IO.inspect Flatten.flatten([1, 2, 3, 4])
IO.inspect Flatten.flatten([1, 2, 3, [4]])
IO.inspect Flatten.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
