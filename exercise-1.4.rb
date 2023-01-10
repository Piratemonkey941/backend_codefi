# -----------------QUESTION 1 -------------------

# Get user input
print "What is your first name: "
name = gets.chomp

print "What is your last name: "
last_name = gets.chomp


puts name
puts last_name

# -----------------QUESTION 2 -------------------

# Convert the name to lowercase
name = name.downcase
last_name = last_name.downcase

# Check if the name is "john"
if name == "john" && last_name == "doe"

    puts "Your name is John Doe!"

elsif name == "amy" && last_name == "jeans" 
    puts "Amy! Help me look for John Doe."

else 
    puts "Your name is not John Doe ..."
    
end

