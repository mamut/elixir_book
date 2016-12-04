defmodule MyList do
  @moduledoc "Reimplements functions that operate on lists."

  def all?([], _), do: true
  def all?([head | tail], func), do: func.(head) && all?(tail, func)

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, n), do: do_split([], list, n)
  defp do_split(first, second = [], _), do: do_split_result(first, second)
  defp do_split(first, second, 0), do: do_split_result(first, second)
  defp do_split(first, [head | tail], n) do
    do_split([head | first], tail, n - 1)
  end
  defp do_split_result(first, second), do: [Enum.reverse(first), second]

  def take(list, n), do: do_take(list, n, [])
  defp do_take(_, 0, agg), do: do_take_result(agg)
  defp do_take([], _, agg), do: do_take_result(agg)
  defp do_take([head|tail], n, agg), do: do_take(tail, n - 1, [head|agg])
  defp do_take_result(agg), do: Enum.reverse(agg)
end
