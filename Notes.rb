# puts "hello world"

# print"How are you?"

# print "How old are you:"
# age = gets.chomp

# print "You are #{age} years old"
# # puts age

# ----------------CHALLANGE QUESTION 1------------------
# Prompt the user for input for width
# print "Enter width:"
# width = gets.chomp.to_i

# # Prompt the user for input for height
# print "Enter height:"
# height = gets.chomp.to_i

# # Calculate the area by multiplying the width and height
# area = width * height

# # Display the result in a message
# puts "The area is #{area}"

# ----------------ARRAYS------------------

# --creating arrays --
# puts num_array = [1, 2, 3]
# puts str_array = ['a','b','c',]

# puts Array.new() # [] prints nothing
# puts Array.new(3) # [3]  printing 3 blank spaces
# puts Array.new(3, 9) # [9,9,9]
# puts Array.new(5, true) # [true,true,true,true,true]

# --accessing elems--

# str_array = ['a','b','c',]
# first_element = str_array[0]
# puts first_element
# puts str_array[-1] # last item
# puts str_array[-2] # second from last item
# puts str_array.first(2) # first 2 
# puts str_array.last(2) # last 2

# --adding and subtracting elems--

# puts num_array = [1, 2, 3]
# puts num_array.push(4, 5)         #=> array is 1 2 3 4 5
# puts num_array << 5               #=> 1, 2, 3, 5
# puts num_array.pop                #=>  pops off end 
# puts num_array
# puts num_array.shift           #=>  removes 0 place in array


# --adding and subtracting Arrays--

# puts a = [1, 2, 3]
# puts b = [4, 5, 6]

# puts a + b #=> 1 2 3 4 5 6
# puts a.concat(b) #=> 1 2 3 4 5 6
# array1 = [1,1,1,1,2,3,4]
# puts array1.inspect
# array2 = [1,4]
# puts array2.inspect

# difference = array1 - array2
# puts difference.inspect

#-- basic array methods -- 
# puts [[]].empty? # false
# puts [].empty? # true
# puts [1, 2].empty? # false

# puts [1, 2, 3].length # 3
# puts [1, 2, 3].reverse # 3 2 1

# puts [1, 2, 3].include?(3) # true
# puts [1, 2, 3].include?(4) # false
# puts [1, 2, 3].include?("3") # false string of 3

# puts "Hi How Are You?".split.inspect        # ["Hi", "How", "Are", "You?"]
# puts "Hi How Are You?".split(" ").inspect   # ["Hi", "How", "Are", "You?"]
# puts [1, 2, 3].join.inspect                 # "123"
# puts [1, 2, 3].join('-').inspect            # "1-2-3"












