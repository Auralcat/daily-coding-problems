defmodule Problem045Test do
  use ExUnit.Case
  doctest Problem045

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "has an even chance of picking all numbers" do
    size = 7000
    population = Enum.map(1..size, fn x -> Problem045.rand7 end)
    nums = Enum.uniq population
    tolerance = size / length(nums)
    frequency = Enum.map(nums, fn x -> Enum.count(population, &(x == &1)) end)

    assert Enum.all?(frequency, &(&1 <= (tolerance * 1.05) and &1 >= (tolerance * 0.95)))
  end
end
