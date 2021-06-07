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

  @spec positive(list) :: list
  def positive([]), do: []

  def positive(input_list) when is_list(input_list) do
    do_positive(input_list)
    |> Enum.reverse()
  end

  defp do_positive(input_list, output_list \\ [])
  defp do_positive([], output_list), do: output_list

  defp do_positive(input_list, output_list) do
    [head | tail] = input_list

    if head > -1 do
      do_positive(tail, [head | output_list])
    else
      do_positive(tail, output_list)
    end
  end
end
