defmodule Fromto do
  @moduledoc "Generate a list with elements in given range."

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
