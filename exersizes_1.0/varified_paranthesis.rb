require 'debug'

def is_valid(s)
    # Initialize an empty stack
    stack = []

    # Define a hash to store the matching brackets
    brackets = { ')' => '(', '}' => '{', ']' => '[' }
     # Start the debugger
    #  debugger
    # Iterate through each character in the string
    s.chars.each do |char|
        # If the character is an opening bracket, push it onto the stack
        if ['(', '{', '['].include?(char)
            stack.push(char)
        # If the character is a closing bracket
        elsif brackets.key?(char)
            # If the stack is empty or the top of the stack doesn't match the closing bracket, return false
            if stack.empty? || stack.pop() != brackets[char]
                return false

                 # Start the debugger
     debugger
            end
        end
    end
    # If the stack is empty at the end, return true
    return stack.empty?
end

# Get input from the user
puts "Please enter a string to check for valid parentheses:"
input_string = gets.chomp

# Call the function and print the result
if is_valid(input_string)
    puts "The string is valid!"
else
    puts "The string is not valid."
end


