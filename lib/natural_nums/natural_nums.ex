defmodule ElixirInAction.NaturalNums do
  @spec print(pos_integer) :: :ok
  def print(1), do: IO.puts(1)

  def print(n) do
    print(n - 1)
    IO.puts(n)
  end
end
