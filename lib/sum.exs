defmodule Sum do
  def my_sum([]), do: 0
  def my_sum([head | []]), do: head
  def my_sum([a | [b | tail]]) do
    my_sum([a+b | tail])
  end
end

IO.puts Sum.my_sum([])
IO.puts Sum.my_sum([1])
IO.puts Sum.my_sum([1, 2, 3, 4])
