defmodule Fromto do
  def span(from, to) when from > to, do: []

  def span(from, to) do
    do_span(from, to, [from])
  end

  def do_span(n, n, acc) do
    Enum.reverse acc
  end

  def do_span(n, max, acc) do
    do_span(n + 1, max, [n + 1 | acc])
  end
end

defmodule Comprehension do
  def primes(n) do
    list = for x <- 2..n, do: [x, Fromto.span(2, div(x,2))]
    list
      |> Enum.filter(&prime?/1)
      |> Enum.map(&List.first/1)
  end

  def prime?([x, divisors]) do
    Enum.all?(divisors, &(rem(x, &1) != 0))
  end
end

IO.inspect Comprehension.primes(100)
