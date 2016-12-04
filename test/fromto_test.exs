defmodule FromtoTest do
  use ExUnit.Case

  test "it generates a list with a specified range of elements" do
    assert Fromto.span(3, 11) == [3, 4, 5, 6, 7, 8, 9, 10]
  end
end
