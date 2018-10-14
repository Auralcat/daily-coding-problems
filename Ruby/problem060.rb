# -*- coding: utf-8 -*-
class Problem060
  class << self
    def can_partition?(arr)
      if arr.sum.even?
        partition_sum = arr.sum / 2
        buf = 0
        sorted_arr = arr.sort

        while buf < partition_sum
          buf += sorted_arr.pop
        end

        buf == partition_sum
      else
        false
      end
    end

    def find_partition_one_elem(arr)
      # Assuming the array can be partitioned, return the element which is
      # equal to arr.sum /2
      arr.select { |x| x == arr.sum / 2 }
    end

    def find_partition_two_elems(arr)
      partition_sum = arr.sum / 2
      arr.select { |n| arr.include?(partition_sum - n) }
    end
  end
end
