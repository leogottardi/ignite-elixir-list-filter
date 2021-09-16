defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return a count of odd numbers" do
      list = ["1", "a", "2", "b", "3", "c"]

      result = ListFilter.call(list)

      expected_result = 2

      assert result == expected_result
    end
  end
end
