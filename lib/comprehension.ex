defmodule Comprehension do
  @moduledoc "Calculates primes and taxes."

  def primes(n) do
    list = for x <- 2..n, do: [x, Fromto.span(2, div(x, 2))]
    list
      |> Enum.filter(&prime?/1)
      |> Enum.map(&List.first/1)
  end

  def prime?([x, divisors]) do
    Enum.all?(divisors, &(rem(x, &1) != 0))
  end

  def tax(orders, tax_rates) do
    for order <- orders, ship_to = order[:ship_to] do
      tax_rate = Keyword.get(tax_rates, ship_to, 0.0)
      total_amount = order[:net_amount] * (1 + tax_rate)
      Keyword.put order, :total_amount, total_amount
    end
  end
end
