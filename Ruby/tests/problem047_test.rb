require 'minitest/autorun'
require_relative 'problem047'

class Problem047Test < Minitest::Test
  def test_returns_the_correct_result
    test = [9, 11, 8, 5, 7, 10]
    test2 = [7, 2, 8, 11, 20, 40, 36, 12, 6, 20, 35]
    assert Problem047.highest_profit(test) == 5
    assert Problem047.highest_profit(test2) == 38
  end

  def test_returns_0_for_array_with_single_num
    dud = [2]
    another_dud = [2] * 10
    assert Problem047.highest_profit(dud).zero?
    assert Problem047.highest_profit(another_dud).zero?
  end

  def test_returns_nil_if_array_contains_non_numbers
    dud = [1, 2, 3, 'foo', 4, 3]
    assert Problem047.highest_profit(dud).nil?
  end
end
