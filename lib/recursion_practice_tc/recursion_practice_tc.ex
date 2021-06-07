defmodule ElixirInAction.RecursionPracticeTC do

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
end
