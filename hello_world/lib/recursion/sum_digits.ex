defmodule HelloWorld.Recursion.SumDigits do
  # Function definition
  # Default argument for acc is 0
  def upto(num, acc \\ 0)

  def upto(0, acc), do: acc

  def upto(num, acc) do
    upto(num - 1, acc + num)
  end
end
