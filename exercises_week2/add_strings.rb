
def add_strings(num1, num2)
    result = ""                                     #initialize an empty string to store the result
    carry = 0                                       #initialize a variable to store the carry
    num1 = num1.reverse                             #reverse the input strings
    num2 = num2.reverse
    max_length = [num1.size, num2.size].max         # get the maximum length of the two input strings
    
    #iterate through each digit
    (0...max_length).each do |i|                                                 
        a = num1[i].nil? ? 0 : num1[i].ord - 48     # get the integer value of the current digit of num1                                                 
        b = num2[i].nil? ? 0 : num2[i].ord - 48     # get the integer value of the current digit of num2
        sum = a + b + carry                         #add the current digits of num1 and num2 and the carry
        digit = sum % 10                            #get the remainder of the sum for the next digit
        carry = sum / 10                            #get the quotient of the sum for the carry
        result.prepend(digit.to_s)                   #add the digit to the result
    end

    #check if there is a carry left and add it to the result if needed
    result.prepend(carry.to_s) if carry > 0
    result 
end

  puts add_strings("456","77")