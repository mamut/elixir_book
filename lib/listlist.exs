defmodule Listlist do
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
  def do_split(first, second = [], _), do: do_split_result(first, second)
  def do_split(first, second, 0), do: do_split_result(first, second)
  def do_split(first, [head | tail], n) do
    do_split([head | first], tail, n - 1)
  end
  def do_split_result(first, second), do: [Enum.reverse(first), second]

  def take(list, n), do: do_take(list, n, [])
  def do_take(_, 0, agg), do: do_take_result(agg)
  def do_take([], _, agg), do: do_take_result(agg)
  def do_take([head|tail], n, agg), do: do_take(tail, n-1, [head|agg])
  def do_take_result(agg), do: Enum.reverse(agg)
end

list = Enum.to_list 1..5

IO.inspect Listlist.all?(list, &(&1 < 4))
IO.inspect Listlist.all?([], &(&1 < 4))

IO.inspect Listlist.each(list, &IO.puts/1)

IO.inspect Listlist.filter(list, &(&1 > 2))

IO.inspect Listlist.split(list, 3)
IO.inspect Listlist.split(list, 0)
IO.inspect Listlist.split([], 3)

IO.inspect Listlist.take(list, 3)
IO.inspect Listlist.take(list, 0)
IO.inspect Listlist.take([], 3)
