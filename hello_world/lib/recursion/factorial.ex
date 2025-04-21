defmodule HelloWorld.Recursion.Factorial do
  def of(num, acc \\ 1)
  def of(0, acc), do: acc

  def of(num, acc), do: of(num - 1, acc * num)
end
