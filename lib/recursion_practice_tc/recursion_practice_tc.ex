defmodule ElixirInAction.RecursionPracticeTC do
  @spec list_len(list) :: non_neg_integer
  def list_len(list) do
    do_list_len(list)
  end

  defp do_list_len(list, n \\ 0)
  defp do_list_len([], n), do: n

  defp do_list_len(list, n) do
    [_head | tail] = list
    n = n + 1
    do_list_len(tail, n)
  end

  @spec range(integer, integer) :: list
  def range(n, m) do
    do_range(n, m)
    |> Enum.reverse()
  end

  defp do_range(n, m, list \\ [])
  defp do_range(n, n, list), do: [n | list]

  defp do_range(n, m, list) do
    list = [n | list]
    do_range(n + 1, m, list)
  end
end
