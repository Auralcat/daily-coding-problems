defmodule Problem061Test do
  use ExUnit.Case
  doctest Problem061

  test "alt_pow returns the correct result" do
    assert Problem061.alt_pow(2, 10) == 1024
    assert Problem061.alt_pow(3, 4) == 81
  end
end
