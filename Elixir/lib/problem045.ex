defmodule Problem045 do
  defp rand5 do
    Enum.random 1..5
  end

  def rand7(collection) when length(collection) == 7 do
    Enum.random collection
  end

  def rand7(collection \\ [6, 7]) do
    # Get all the items from rand5 inside rand7 before returning.
    current = rand5()
    if Enum.member?(collection, current) do
      rand7(collection)
    else
      rand7([current | collection])
    end
  end
end
