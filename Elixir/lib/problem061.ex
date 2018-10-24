defmodule Problem061 do
  # This is a bit different from the other implementations because of current
  # limitations in Elixir.
  def alt_pow(base, exponent) do
    cond do
      exponent == 0 ->
        1
      exponent == 1 ->
        base
      rem(round(exponent), 2) == 0 ->
        alt_pow(base * base, round(exponent / 2))
      rem(round(exponent), 2) != 0 ->
        base * alt_pow(base * base, round((exponent - 1) / 2))
    end
  end
end
