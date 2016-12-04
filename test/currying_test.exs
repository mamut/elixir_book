defmodule CurryingTest do
  use ExUnit.Case

  test "currying means partially applicated functions" do
    prefix = fn prefix -> (fn text -> "#{ prefix } #{ text }" end) end
    mrs = prefix.("Mrs")
    assert mrs.("Smith") == "Mrs Smith"
    assert prefix.("Elixir").("Rocks") == "Elixir Rocks"
  end
end
