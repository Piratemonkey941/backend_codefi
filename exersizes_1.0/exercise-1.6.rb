# Define the array
array = [[1,2,3],[[[4,5,6]]]]

# Define a helper function to flatten the array
def flatten(arr)
  result = []
  arr.each do |el|
    if el.is_a?(Array)
      result.concat(flatten(el))
    else
      result << el
    end
  end
  result
end

# Flatten the array
flat_array = flatten(array)

# Print each element in the flattened array
flat_array.each do |el|
  puts el
end

