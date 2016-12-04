defmodule SumTest do
  use ExUnit.Case

  test "my_sum sums elements in a list" do
    assert Sum.my_sum([]) == 0
    assert Sum.my_sum([1]) == 1
    assert Sum.my_sum([1, 2, 3, 4]) == 10
  end
end
