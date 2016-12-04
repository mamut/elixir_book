defmodule TimesTest do
  use ExUnit.Case

  test "it doubles its argument" do
    assert Times.double(1) == 2
    assert Times.double(4) == 8
    assert Times.double(512) == 1024
  end
end
