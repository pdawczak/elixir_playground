defmodule MyMap do

  @doc """
  iex> MyMap.map_tco [1, 2, 3, 4], fn(i) -> i + 1 end
  [2, 3, 4, 5]
  """
  def map_tco(list, function) do
    Enum.reverse do_map_tco([], list, function)
  end

  defp do_map_tco(acc, [head | tail], function) do
    do_map_tco([function.(head) | acc], tail, function)
  end
  defp do_map_tco(acc, [], _function) do
    acc
  end

  @doc """
  iex> MyMap.map_tco_new_acc [1, 2, 3, 4], fn(i) -> i + 1 end
  [2, 3, 4, 5]
  """
  def map_tco_new_acc(list, function) do
    Enum.reverse do_map_tco_new_acc([], list, function)
  end

  defp do_map_tco_new_acc(acc, [head | tail], function) do
    new_acc = [function.(head) | acc]
    do_map_tco_new_acc(new_acc, tail, function)
  end
  defp do_map_tco_new_acc(acc, [], _function) do
    acc
  end

  @doc """
  iex> MyMap.map_tco_concat [1, 2, 3, 4], fn(i) -> i + 1 end
  [2, 3, 4, 5]
  """
  def map_tco_concat(acc \\ [], list, function)
  def map_tco_concat(acc, [head | tail], function) do
    map_tco_concat(acc ++ [function.(head)], tail, function)
  end
  def map_tco_concat(acc, [], _function) do
    acc
  end

  @doc """
  iex> MyMap.map_body [1, 2, 3, 4], fn(i) -> i + 1 end
  [2, 3, 4, 5]
  """
  def map_body([], _func), do: []
  def map_body([head | tail], func) do
    [func.(head) | map_body(tail, func)]
  end

  @doc """
  iex> MyMap.map_tco_no_reverse [1, 2, 3, 4], fn(i) -> i + 1 end
  [5, 4, 3, 2]
  """
  def map_tco_no_reverse(list, function) do
    do_map_tco([], list, function)
  end
end
