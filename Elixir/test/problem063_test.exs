defmodule Problem063Test do
  use ExUnit.Case
  doctest Problem063

  # Setup the test matrix
  setup _context do
    {:ok, [test_matrix: [{ 'F', 'A', 'C', 'I' },
                         { 'O', 'B', 'Q', 'P' },
                         { 'A', 'N', 'O', 'B' },
                         { 'M', 'A', 'S', 'S' }]]}
  end

  test "can_form_word? returns the correct result in horizontal searches", context do
    assert Problem063.can_form_word?(context[:test_matrix], "mass")
  end

  test "can_form_word? returns the correct result in vertical searches", context do
    assert Problem063.can_form_word?(context[:test_matrix], "foam")
  end

end
