class Problem071
  class << self
    def rand5
      # Get 50 random numbers
      candidates = (1..50).map { |n| Problem071.rand7 }
      # Pick the one I want from the filtered array.
      (candidates.filter { |n| n <= 5 }).sample
    end

    def rand7
      (1..7).to_a.sample
    end
  end
end
