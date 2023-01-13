user = { "email" => "example@gmail.com", "id" => "example456"}

puts user["email"]
puts user["id"]

puts user["email"].length
puts user["email"].empty?

if user.has_key?("email")
    puts user["email"]
else
    puts "key 'email' not found"
end