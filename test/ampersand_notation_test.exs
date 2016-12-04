defmodule AmpersandNotationTest do
  use ExUnit.Case

  test "it is the same as writing explicit arguments" do
    list = [1, 2, 3, 4]
    assert Enum.map(list, &(&1 + 2)) == Enum.map(list, fn x -> x + 2 end)
  end
end
