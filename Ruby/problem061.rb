# It gets even faster when you implement the function in the object itself.
class Integer
  def alt_pow(exp)
    # You need to define a few procs to use in the case statement.
    zero = proc(&:zero?)
    odd = proc(&:odd?)
    even = proc(&:even?)

    case exp
    when zero
      1
    when even
      alt_pow(exp / 2) ** 2
    when odd
      self * alt_pow(exp - 1)
    else
      puts "Something went wrong."
    end
  end
end
