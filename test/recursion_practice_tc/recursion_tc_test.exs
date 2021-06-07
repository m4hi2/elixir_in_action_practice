defmodule ElixirInAction.RecursionPracticeTCTest do
  @moduledoc false
  use ExUnit.Case
  @moduletag :recursion_practice_tc

  alias ElixirInAction.RecursionPracticeTC, as: RecursionPractice

  @tag :list_len_tc
  describe "provided an input list, the size of that list would be returned" do
    test "the length of a empty list should be 0" do
      assert RecursionPractice.list_len([]) == 0
    end

    test "the length of a 3 element list should be 3" do
      assert RecursionPractice.list_len([1, 2, 4]) == 3
    end
  end

  @tag :range_tc
  describe "provided a minimum value and maximum value each number between that range will be returned as a list" do
    test "if both input are same, then the only the number would be returned" do
      assert RecursionPractice.range(1, 1) == [1]
    end

    test "if n - m == 3, then the output list should have 4 elements" do
      assert RecursionPractice.range(2, 5) == [2, 3, 4, 5]
      assert RecursionPractice.range(2, 5) |> length == 4
    end
  end

  @tag :positive_tc
  describe "taking a list of number, only the positive numbers will be returned in a new list" do
    test "if an empty list is provided, an empty list is returned" do
      assert RecursionPractice.positive([]) == []
    end

    test "if only negative numbers are provided, an empty list will be returned" do
      assert RecursionPractice.positive([-1, -2, -3]) == []
    end

    test "if positive numbers are provided in the input list, the positive numbers are returned" do
      assert RecursionPractice.positive([-1, -2, 1, 2, 3, -4]) == [1, 2, 3]
    end
  end
end
