defmodule HelloWorld.Lists do
  @moduledoc """
  This module contains functions to work with lists.

  Functions:
  - `sum/1`: Sums the elements of a list using tail recursion.
  """

  @doc """
  Sums the elements of a list using tail recursion.
  """
  @spec sum(list(number())) :: number()
  def sum(nums), do: sum_tail_recursive(nums)

  @spec sum_simple(list(number())) :: number()
  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)

  @spec sum_tail_recursive(list(number()), integer()) :: number()
  def sum_tail_recursive(nums, acc \\ 0)
  def sum_tail_recursive([], acc), do: acc
  def sum_tail_recursive([h | t], acc), do: sum_tail_recursive(t, h + acc)

  @spec reverse([any], [any]) :: [any]
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])

  @spec map([any()], (any() -> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([], _func, acc), do: reverse(acc)
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])
end
