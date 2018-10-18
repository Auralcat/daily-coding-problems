require 'minitest/autorun'
require_relative '../problem063'

class Problem063Test < Minitest::Test
  def setup
    @test_matrix = [['F', 'A', 'C', 'I'],
                    ['O', 'B', 'Q', 'P'],
                    ['A', 'N', 'O', 'B'],
                    ['M', 'A', 'S', 'S']]
  end

  def test_can_find_words_horizontally
    assert Problem063.can_form_word?(@test_matrix, 'mass')
  end

  def test_can_find_vertical_words
    assert Problem063.can_form_word?(@test_matrix, 'foam')
  end
end
