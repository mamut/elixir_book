defmodule MyFlattenTest do
  use ExUnit.Case

  test "flattening empty list" do
    assert MyFlatten.flatten([]) == []
  end

  test "flattening list with no sublists" do
    assert MyFlatten.flatten([1, 2, 3, 4]) == [1, 2, 3, 4]
  end

  test "flattening list with single sublist" do
    assert MyFlatten.flatten([1, 2, 3, [4]]) == [1, 2, 3, 4]
  end

  test "flattening list with nested sublists" do
    assert MyFlatten.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]]) == \
      [1, 2, 3, 4, 5, 6]
  end
end
