
# -----------------QUESTION 1 -------------------

print "Please enter a sentence: "

user_input = gets.chomp

puts "You typed: #{user_input}" 

# -----------------QUESTION 2 -------------------

def multiply_by_two(x)
    return x * 2
end

print "Enter a number: "
num = gets.to_i

result = multiply_by_two(num)
puts result

# -----------------QUESTION 3 -------------------

def divide_by_two(x)
    return x / 2
end

print "Enter a number: "
num = gets.to_i

result = divide_by_two(num)
puts result


