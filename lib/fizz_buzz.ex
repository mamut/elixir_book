defmodule FizzBuzz do
  @moduledoc "Implementation of FizzBuzz."

  def get(n) do
    foo = fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, x -> x
    end
    foo.(rem(n, 3), rem(n, 5), n)
  end
end
