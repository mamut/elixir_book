defmodule Djinn do
  @moduledoc "Guesses the actual number with bisection."

  def guess(actual, start..stop) do
    guess(actual, start..stop, div(stop - start, 2) + start)
  end

  def guess(actual, _, actual) do
    IO.puts(actual)
  end

  def guess(actual, _..stop, current) when actual > current do
    IO.puts("Is it #{ current }")
    guess(actual, (current + 1)..stop)
  end

  def guess(actual, start.._, current) when actual < current do
    IO.puts("Is it #{ current }")
    guess(actual, start..(current - 1))
  end
end
