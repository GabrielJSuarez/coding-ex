# Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
#
# nums = [1,2,3,4,5,6,7]
# k = 3

nums = [1,2,3,4,5,6,7]
k = 3

# [5,6,7,1,2,3,4]
def rotate(nums, k)
  # traversing once and modifying in place, better approach
  last = 0
  while last < k
    nums.unshift(nums.pop)
    last += 1
  end

  nums
  # ruby solution, apparently not accepted
  # sliced = nums.slice!(-k, k)
  #
  # sliced + nums
end

p rotate(nums, k)