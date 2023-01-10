
for num in 1..100 do      # Check if the current number is divisible by 15
    if num % 15 == 0        
        puts "FizzBuzz"   # If it is, print "FizzBuzz"    
    elsif num % 3 == 0    # If it's not divisible by 15, check if it's divisible by 3       
        puts "Fizz"       # If it is, print "Fizz" 
    elsif num % 5 == 0    # If it's not divisible by 15 or 3, check if it's divisible by 5       
        puts "Buzz"       # If it is, print "Buzz"    
    else                  # If it's not divisible by 15, 3, or 5, just print the number
        puts num
    end
end