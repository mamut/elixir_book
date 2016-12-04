defmodule FizzBuzzTest do
  use ExUnit.Case

  test "can do a fizz buzz" do
    assert FizzBuzz.get(10) == "Buzz"
    assert FizzBuzz.get(11) == 11
    assert FizzBuzz.get(12) == "Fizz"
    assert FizzBuzz.get(13) == 13
    assert FizzBuzz.get(14) == 14
    assert FizzBuzz.get(15) == "FizzBuzz"
    assert FizzBuzz.get(16) == 16
  end
end
