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

    def find_partition_general(arr)
      # Walk through the mappings to find the partition sum.
      partition_sum = arr.sum / 2
      buf = arr
      i = 0
      out = []

      while !buf.include?(partition_sum)
        buf = buf.slice(1, buf.length).map { |n| n + arr[i]}
        out << arr[i]
        i += 1
      end

      puts "Final buffer is #{buf}"
      out << (arr.select { |n| partition_sum - out.sum == n }).pop
      out
    end
  end
end
