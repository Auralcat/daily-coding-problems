class Problem047
  class << self
    def highest_profit(arr)
      if arr.all? { |n| n.respond_to? "integer?" }
        low = arr.min
        candidates = arr.drop(arr.index(arr.min))
        candidates.max - low
      else
        nil
      end
    end
  end
end
