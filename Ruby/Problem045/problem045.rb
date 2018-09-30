class Problem45
  class << self
    def rand5
      (1..5).to_a.sample
    end

    def rand7
      collection = [6, 7]
      while collection.length < 7
        current = rand5
        collection << current unless collection.include?(current)
      end

      collection.sample
    end
  end
end

test = []
7000.times do
  test << Problem45.rand7
end

nums = test.uniq.sort
p nums.map { |x| { number: x, count: test.count { |n| n == x } } }
