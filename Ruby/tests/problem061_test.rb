require 'minitest/autorun'
require_relative '../problem061'

class Problem063Test < Minitest::Test
  def test_alt_pow_returns_correct_result
    assert 2.alt_pow(10) == 1024
    assert 3.alt_pow(4) == 81
  end
end
