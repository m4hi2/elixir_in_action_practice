defmodule ElixirInAction.Circle do
  @moduledoc """
  Implements basic circle functions
  """
  @pi 3.14159

  @doc """
  Computes the area of a circle
  """
  @spec area(number) :: float
  def area(r), do: r * r * @pi

  @doc """
  Computes the circumference of a circle
  """
  @spec circumference(number) :: float
  def circumference(r), do: 2 * r * @pi
end
