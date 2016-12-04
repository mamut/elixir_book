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

  def tax(orders, tax_rates) do
    for order <- orders, ship_to = order[:ship_to] do
      tax_rate = Keyword.get(tax_rates, ship_to, 0.0)
      total_amount = order[:net_amount] * (1 + tax_rate)
      Keyword.put order, :total_amount, total_amount
    end
  end
end

IO.inspect Comprehension.primes(100)

tax_rates = [ NC: 0.075, TX: 0.08 ]
orders = [
    [ id: 123, ship_to: :NC, net_amount: 100.00 ],
    [ id: 124, ship_to: :OK, net_amount:  35.50 ],
    [ id: 125, ship_to: :TX, net_amount:  24.00 ],
    [ id: 126, ship_to: :TX, net_amount:  44.80 ],
    [ id: 127, ship_to: :NC, net_amount:  25.00 ],
    [ id: 128, ship_to: :MA, net_amount:  10.00 ],
    [ id: 129, ship_to: :CA, net_amount: 102.00 ],
    [ id: 130, ship_to: :NC, net_amount:  50.00 ] ]

IO.inspect Comprehension.tax(orders, tax_rates)
