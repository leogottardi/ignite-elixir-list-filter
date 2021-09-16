defmodule ListFilter do

  require Integer

  def call(list) do
    list
    |> filter_numbers_in_list()
    |> filter_odd_numbers()
  end

  defp filter_numbers_in_list(list) do
    list
    |> Enum.reject(fn elem ->
      case Integer.parse(elem) do
        {_number, ""} -> false

        _ -> true
      end
    end)
    |> Enum.map(fn elem -> String.to_integer(elem) end)
  end

  def filter_odd_numbers(list) do
    list
    |> Enum.count(fn elem -> Integer.is_odd(elem) end)
  end
end
