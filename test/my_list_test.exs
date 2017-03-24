defmodule MyListTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  def list, do: Enum.to_list(1..5)

  test "all? checks a predicate" do
    refute MyList.all?(list(), &(&1 < 4))
  end

  test "all? makes sense of empty lists" do
    assert MyList.all?([], &(&1 < 4))
  end

  test "each calls a function once for each element in the list" do
    assert capture_io(fn ->
      MyList.each(list(), &IO.puts/1)
    end) == """
    1
    2
    3
    4
    5
    """
  end

  test "filter lets through only elements that pass the predicate" do
    assert MyList.filter(list(), &(&1 > 2)) == [3, 4, 5]
  end

  test "split cuts a list in specified position" do
    assert MyList.split(list(), 3) == [[1, 2, 3], [4, 5]]
  end

  test "split can happen at the very beginning" do
    assert MyList.split(list(), 0) == [[], [1, 2, 3, 4, 5]]
  end

  test "split can be used on empty list" do
    assert MyList.split([], 3) == [[], []]
  end

  test "take returns a part of the list" do
    assert MyList.take(list(), 3) == [1, 2, 3]
  end

  test "take can also take nothing from a list" do
    assert MyList.take(list(), 0) == []
  end

  test "take can be called on an empty list" do
    assert MyList.take([], 3) == []
  end
end
