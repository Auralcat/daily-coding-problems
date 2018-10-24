defmodule Problem071Test do
  use ExUnit.Case
  doctest Problem071

  test "has an even chance of picking all numbers" do
    size = 5000
    population = Enum.map(1..size, fn x -> Problem071.rand5 end)
    nums = Enum.uniq population
    limit = size / length(nums)
    frequency = Enum.map(nums, fn x -> Enum.count(population, &(x == &1)) end)

    assert Enum.all?(frequency, &(&1 <= (limit * 1.05) and &1 >= (limit * 0.95)))
  end
end
