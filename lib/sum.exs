defmodule Sum do
  def sum([]), do: 0
  def sum([head | []]), do: head
  def sum([a | [b | tail]]) do
    sum([a+b | tail])
  end
end

IO.puts Sum.sum([])
IO.puts Sum.sum([1])
IO.puts Sum.sum([1, 2, 3, 4])
