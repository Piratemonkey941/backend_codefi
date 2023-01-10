def roman_to_int(s)
    # create a hash that stores the mapping of Roman numerals to integers
    roman_to_int = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000,
        'IV' => 4,
        'IX' => 9,
        'XL' => 40,
        'XC' => 90,
        'CD' => 400,
        'CM' => 900
    }
    # initialize a variable to store the result
    result = 0
    # convert the input string to uppercase
    s = s.upcase
    while s.length > 0
        if s.length > 1 && roman_to_int[s[0..1]]
            result += roman_to_int[s[0..1]]
            s = s[2..-1]
        else
            result += roman_to_int[s[0]]
            s = s[1..-1]
        end
    end
    # return the result
    return result
end


puts "Enter a Roman numeral:"
input_string = gets.chomp
puts roman_to_int(input_string)