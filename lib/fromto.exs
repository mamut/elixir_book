defmodule Fromto do
  def span(from, to) do
    do_span(from, to, [])
  end

  def do_span(n, n, acc) do
    Enum.reverse acc
  end

  def do_span(n, max, acc) do
    do_span(n + 1, max, [n | acc])
  end
end

IO.inspect Fromto.span(3, 11)
