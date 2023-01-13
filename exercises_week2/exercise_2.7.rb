numbers = (1..10).to_a

puts "first element: #{numbers[0]}"
puts "last element: #{numbers[-1]}"
puts "Length #{numbers.count}"

puts numbers.unshift(13)
puts numbers << (11)

numbers.each do |num|
    puts num
end

numbers = (1..10).to_a

numbers.each do |num|
    multiplied_num = num * 2
    if  multiplied_num.even?
        puts "#{multiplied_num}: is a even number"
    else
        puts "#{multiplied_num}: is a odd number"

    end
end

numbers = (1..10).to_a
multiplied_num = numbers.map{|num| num * 2}
even_nums= multiplied_num.select{|num| num.even?}

if  multiplied_num
    puts "#{even_nums}: is a even number"
else
    puts "#{multiplied_num}: is a odd number"

end

