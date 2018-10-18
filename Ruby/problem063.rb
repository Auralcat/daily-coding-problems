class Problem063
  class << self
    def can_form_word?(matrix, word)
      candidates = []
      matrix.each_with_index do |row, index|
        # Get the word in the line
        candidates << row.join
        # Find words vertically
        candidates << (matrix.map { |r| r[index] }).join
      end
      candidates.any? { |item| item == word.upcase }
    end
  end
end
