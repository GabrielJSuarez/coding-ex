# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

# @param {Integer[]} nums
# @return {Boolean}
nums = [1,2,3,1]
nums2 = [1,2,3,4]
def contains_duplicate(nums)
  # using ruby
  #   uniq_arr = nums.uniq
  #
  #   nums.length > uniq_arr.length ? true : false

  # using hash lookup
  seen = {}

  nums.each do |num|
    return true if seen[num]
    seen[num] = true
  end

  false

  # according to leetcode, ruby method is faster
end

p contains_duplicate(nums)