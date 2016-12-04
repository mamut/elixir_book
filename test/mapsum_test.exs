defmodule MapsumTest do
  use ExUnit.Case

  test "mapsum maps and then sums items on a list" do
    assert Mapsum.mapsum([1, 2, 3], &(&1 * &1)) == (1 + 4 + 9)
  end

  test "my_max finds the biggest value in the list" do
    assert Mapsum.my_max([1, 2, 3]) == 3
    assert Mapsum.my_max([1, 3, 2]) == 3
    assert Mapsum.my_max([3, 2, 1]) == 3
  end

  test "caesar can be used to do rot13" do
    assert Mapsum.caesar('ryvkve', 13) == 'elixir'
  end
end
