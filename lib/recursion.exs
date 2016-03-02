defmodule Recursion do
  def my_sum(0), do: 0
  def my_sum(n), do: n + my_sum(n-1)

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

IO.puts Recursion.my_sum(10)
IO.puts Recursion.gcd(25, 5)
