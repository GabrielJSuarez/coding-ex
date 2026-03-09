# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

nums = [0,1,0,3,12]

def move_zeroes(nums)
  # one pass only
  curr_index = 0
  nums.each_with_index do |number, i|
    next if number == 0

    sliced = nums.slice!(i)
    nums.insert(curr_index, sliced)
    curr_index += 1
  end

  nums
  # brute force / ruby way
  # non_zero_arr = nums.filter { |num| num != 0}
  # zeros = nums.count(0)
  # zeros.times do |_i|
  #   non_zero_arr.push(0)
  # end
  #
  # non_zero_arr
end

p move_zeroes(nums)