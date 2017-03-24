defmodule Recursion do
  @moduledoc "Simple examples of classic recursive functions."

  def my_sum(0), do: 0
  def my_sum(n), do: n + my_sum(n - 1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
