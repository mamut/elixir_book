defmodule Fromto do
  @moduledoc "Generate a list with elements in given range."

  def span(from, to) when from > to, do: []

  def span(from, to) do
    do_span(from, to, [from])
  end

  def do_span(n, n, acc) do
    Enum.reverse acc
  end

  def do_span(n, to, acc) do
    do_span(n + 1, to, [n + 1 | acc])
  end
end
