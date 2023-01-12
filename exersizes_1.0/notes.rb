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

# ----------------HASHES-------------------------
#-- #creating hashes -- \
# my_hash = 
# {
#     "this is a key" => "this is a value",
#     :name => 'nolan',
#     'array' => [1,2,3],
#     'nested hash' => {}
# }

# my_hash_two = Hash.new #{}

# puts my_hash["this is a key"]
# puts my_hash[:name]
# puts my_hash['array']
# puts my_hash['nested hash']

# puts my_hash_two

# -----------Accessing Values-----------
# shoes = 
# {
#     'summer' => 'sandal',
#     'winter' => 'boots'
# }

# puts shoes ['winter'] # should output boots
# puts shoes ['hiking'] # will not output

# puts shoes ['summer', 'winter'] # will error
# puts shoes ['summer'], ['winter'] # will error 2 arguments given one expected

# puts shoes.fetch('summer') # should output sandels
# puts shoes.fetch('hiking') # outputs error

# puts shoes.fetch('summer', 'winter') # outputs sandels


# -----------Adding & Changing Data-----------

# puts shoes['summer'] = 'flip-flops'
# puts shoes

# -----------Removing Data-----------

# shoes.delete('summer')
# puts shoes

# -----------Methods-----------

# books = 
# {
#     'Harry Potter' => "J.K. Rowling",
#     'Tom Sawyer' => "Mark Twain"   
# }

# puts books.keys
# puts books.values

# -----------Merging two hashes-----------

# hash1 = 
# {
#     'a' => 100,
#     'b' => 200
# }

# hash2 = 
# {
#     'c' => 300,
#     'd' => 400
# }

# puts hash1.merge(hash2)


# -----------Symbols as hashkeys-----------

# american_cars =
# {
#     :chevy => 'Corvette',
#     :ford => 'Mustang',
#     :dodge => 'Challenger'
# }

# japanese_cars =
# {
#     honda: 'Accord',
#     toyota: 'Tacoma',
#     nissan: 'Altima'
# }

# puts american_cars[:ford]
# puts japanese_cars[:toyota]

# puts american_cars.keys
# puts american_cars.values


# ------------- CONDITIONAL LOGIC --------------

# ------------- Basic Conditional --------------

#basic if statement

# a = true
# puts "hello" if a

# puts "hello1" if true

# puts "hello2" if 5 == 5

# puts "hello3" if 4 != 5


# ------------- If Else/Elseif --------------

# i = 3

#--- basec --- 
# if i > 3
#     puts"#{i} is greater then 3"
# end

# if i > 3
#     puts"#{i} is greater then 3"
# elsif i < 3
#     puts"#{i} is less then 3"
# else
#     puts"#{i} is equal to 3"
# end


# ------------- Unless Statement --------------
# opposit of if
# a = 3

# unless a == 3
#     puts"#{a} is not equal to 3"
# end

# ------------- COMPAIRISON OPERATORS--------------

# ------------- ==  -------------- not assigning value but checking for equal value
# puts 3 == 3 #true
# puts 3 == 5 #false


# ------------- != -------------    checking for non equal value

# puts 3 != 3 # false 
# puts 3 != 4 # true 

# ------------- > --------------

# puts 3 > 3 #false
# puts 3 > 5 #false
# puts 5 > 3 #true

# # ------------- < --------------

# puts 3 < 3 #false
# puts 3 < 5 #true
# puts 5 < 3 #false

# ------------- >= --------------

# puts 3 >= 3 #true
# puts 3 >= 5 #false
# puts 5 >= 3 #true

#  ------------- <= --------------

# puts 3 <= 3 #true
# puts 3 <= 5 #true
# puts 5 <= 3 #false

# ------------- <=> --------------

# 1 <=> 2  # -1
# 2 <=> 2  # 0
# 3 <=> 2  # 1

# -1 if the first value is less than the second.
# 0 if the first value is equal to the second.
# 1 if the first value is greater than the second.


# ------------- LOGICAL OPERATORS --------------
# a = 6
# ------------- && --------------

# puts "#{a} is between 4 and 10" if a > 4 && a < 10

# if a > 4 && a < 10
#     puts "#{a} is between 4 and 10" 
# end
 
# ------------- || --------------

# puts "#{a} is between 4 and 10" if a > 4 || a < 10

# if a > 4 || a < 10
#     puts "#{a} is either greater then  4 OR less then 10" 
# end

# ------------- Ternary Operators --------------

# can_swim = false

# response = can_swim ? "You wont drown" : "You Might Drown"

# puts response

# #response is false so prints "you might drown"

# condition ? if_true_expression : if_false_expression

# x = 5
# y = 10

# # Using ternary operator
# result = x > y ? "x is greater than y" : "x is less than or equal to y"


# ------------- Case Statement --------------
# grade = 'A'

# case grade
# when "A"
#     puts "Good Job!"
# when "B"
#     puts "Good job, try harder next time!"
# when "C"
#     puts "You Passed but study more!"
# when "D"
#     puts "Almost Passed. Study more"
# else "F"
#     puts "You failed, please study"
# end

#                                         ------------- END CONDITIONAL LOGIC --------------

#                                         ------------- LOOPS --------------

# ------------- Generic Loops -------------- 
# i = 0

# loop do
#     puts "i is #{i}"
#     i += 1              # same as i = i + 1
#     break if i == 10
# end

# Infinite Loop
# loop do
#     puts "i is #{i}"
# end

# ------------- While Loops -------------- 
# less code 
# i = 0

# while i < 10 do
#     puts "i is #{i}"
#     i += 1  
# end

# ------------- Ultil Loops -------------- 
# The loop will continue executing the code inside as long as the condition is false.
# Once the condition becomes true, the loop will exit and the program will continue 
# executing the code that follows the loop.

# i = 0

# until i == 10
#     puts "i is #{i}"
#     i += 1  
# end

# ------------- Ranges --------------   
# Ranges are represented using the .. (inclusive) or ... (exclusive) operator.
# An inclusive range is defined using the .. operator and includes the 
# start and end values of the range. For example, 1..10 defines a range
#  of numbers from 1 to 10, including both 1 and 10.

# An exclusive range is defined using the ... operator and includes all
#  the values up to, but not including, the end value. For example, 
#  1...10 defines a range of numbers from 1 to 9, not including 10.

# i = 0

# (1..10).each do |i|
#     puts i
# end
# # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# (1...10).each do |i|
#     puts i
# end
# # [1, 2, 3, 4, 5, 6, 7, 8, 9]

# ------------- For Loops --------------   

# for i in 0..10
#     puts "#{i} zombies incoming!"
# end


# ------------- Times Loops --------------  

# 5.times do 
#     puts "hello world"
# end

5.downto(1) do |i|
    puts i
  end

# In summary, the |i| notation is used to define variables to 
# be used as block parameters. It makes your code more readable
# and easy to understand. It is passed to the block and can be 
# used inside the block as needed, especially in cases like 
# counting iterations as in the case of times loop.





#                                         ------------- END LOOPS --------------
