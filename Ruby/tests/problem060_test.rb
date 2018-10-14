require 'minitest/autorun'
require_relative '../problem060'

class Problem060Test < Minitest::Test
  def test_returns_correct_result
    valid_arr = [7, 2, 3, 2, 3, 4, 1]
    another_valid_arr = [5, 10, 15, 10, 15, 20, 35]
    bad_arr = [15, 5, 10, 20, 35]

    assert Problem060.can_partition?(valid_arr)
    assert Problem060.can_partition?(another_valid_arr)
    refute Problem060.can_partition?(bad_arr)
  end

  def test_find_partition_one_element_behaves_correctly
    should_work = [10, 2, 3, 5]
    assert Problem060.find_partition_one_elem(should_work) == [10]
  end

  def test_find_partition_two_elems_behaves_correctly
    should_work = [1, 2, 3, 2, 4, 3, 7]
    target = Problem060.find_partition_two_elems(should_work)

    assert target.sum == should_work.sum / 2
  end

  def test_find_partition_general_elems_behaves_correctly
    should_work = [1, 7, 21, 35, 35, 21, 7, 1]
    target = Problem060.find_partition_general(should_work)

    assert target.sum == should_work.sum / 2
    assert Problem060.find_partition_two_elems(should_work)
  end
end
