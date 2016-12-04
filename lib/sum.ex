defmodule Sum do
  @moduledoc "Sums elements in a list."

  def my_sum([]), do: 0
  def my_sum([head | []]), do: head
  def my_sum([a | [b | tail]]) do
    my_sum([a + b | tail])
  end
end
