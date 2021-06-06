defmodule ElixirInAction.RecursionPractice do
  @spec list_len(list) :: non_neg_integer
  def list_len([]), do: 0

  def list_len(list) do
    [_head | tail] = list
    1 + list_len(tail)
  end

  @spec range(integer, integer) :: list
  def range(n, n), do: [n]

  def range(n, m) do
    [n | range(n + 1, m)]
  end

  @spec positive(list) :: list
  def positive([]), do: []

  def positive(list) do
    [head | tail] = list

    if head > -1 do
      [head | positive(tail)]
    else
      positive(tail)
    end
  end
end
