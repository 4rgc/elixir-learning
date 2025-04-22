defmodule HelloWorld.Recursion.ReverseNum do
  def of(num, acc \\ 0)
  def of(0, acc), do: acc

  def of(num, acc) do
    of(div(num - Integer.mod(num, 10), 10), acc * 10 + Integer.mod(num, 10))
  end
end
