defmodule DjinnTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  test "it finds the actual value via bisection" do
    assert capture_io(fn ->
      Djinn.guess(273, 0..1000)
    end) == """
    Is it 500
    Is it 249
    Is it 374
    Is it 311
    Is it 280
    Is it 264
    Is it 272
    Is it 276
    Is it 274
    273
    """
  end
end
