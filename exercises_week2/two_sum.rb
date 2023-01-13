# require 'byebug'
require 'debug'

def two_sum(nums, target)
    debugger
    hash = {}                                   # initialize an empty hash
    
    nums.each_with_index do |num, i|            # iterate through the array
        
        
        if hash.has_key?(target - num)          # check if target - current number is already in the hash           
            
            
            return [hash[target-num], i]        # if it is, return the indices of the two numbers
        else    
            hash[num] = i                       # if it isn't, add the current number and its index to the hash
        end
        
    end
end

nums = [3,2,4]
target = 6
puts two_sum(nums, target) 