require 'minitest/autorun'
require_relative '../problem071'

class Problem071Test < Minitest::Test
  def test_rand5_has_an_even_chance_of_picking_each_elem
    number_space = (1..5000).map { |n| Problem071.rand5 }
    nums = number_space.uniq
    frequency = nums.map { |n| number_space.count { |x| n == x } }
    limit = 5000 / nums.length

    assert(frequency.all? { |n| n <= limit * 1.05 && n >= limit * 0.95 })
  end
end
