defmodule Problem063 do
  def can_form_word?(matrix, word) do
    candidates = horizontal_words(matrix) ++ vertical_words(matrix)
    Enum.any?(candidates, &(&1 == String.upcase(word)))
  end

  def horizontal_words(matrix) do
    # Tuples can't be used inside the Enum functions since they're not Enumerable
    Enum.map(matrix, fn x -> Tuple.to_list(x) |> Enum.join end)
  end

  def vertical_words(matrix, index \\ 0, acc \\ []) do
    cond do
      index == length(matrix) ->
        acc
      true ->
        current_word = Enum.map(matrix, fn x -> elem(x, index) end) |> Enum.join
        vertical_words(matrix, index + 1, [current_word | acc])
    end
  end
end
