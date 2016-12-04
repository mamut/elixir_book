defmodule Mapsum do
  @moduledoc "Another round of reimplementing list functions."

  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def my_max([head | []]), do: head
  def my_max([a | [b | tail]]) when a > b, do: my_max([a | tail])
  def my_max([_ | tail]), do: my_max(tail)

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n > ?z do
    caesar([head - (?z - ?a + 1) | tail], n)
  end
  def caesar([head | tail], n) do
    [head + n | caesar(tail, n)]
  end
end
