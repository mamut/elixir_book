defmodule RecursionTest do
  use ExUnit.Case

  test "my_sum calculates the sum" do
    assert Recursion.my_sum(10) == 55
  end

  test "gcd finds the greatest common divider" do
    assert Recursion.gcd(25, 5) == 5
  end
end
