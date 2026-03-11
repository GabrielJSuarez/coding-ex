# google question
# given an array = [2,5,1,2,3,5,1,2,4]
# return the first repeating number in the array
# in here it should return 2
# if no repeated elements are found return nil

arr = [1,2,3,4]

def first_recurring_character(arr)
  seen_values = {}

  arr.each do |val|
    seen_values["#{val}"] ? seen_values["#{val}"] += 1 : seen_values["#{val}"] = 1

    return val if seen_values["#{val}"] > 1
  end

  nil
end

p first_recurring_character(arr)