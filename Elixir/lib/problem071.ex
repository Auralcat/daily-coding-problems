defmodule Problem071 do
  defp rand7 do
    Enum.random 1..7
  end

  def rand5(acc \\ rand7) do
    cond do
      acc > 5 ->
        rand5(rand7)
      true ->
        acc
    end
  end
end
