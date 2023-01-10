users = [
    {
        name: "John Doe",
        age: 43
    },
    {
        name: "Amy Singer",
        age: 53
    },
    {
        name: "Jimmy Lendricks",
        age: 23
    }
]

index = 0                   # Set the index to 0

length = users.length       # Set the length of the array

# Use a while loop to iterate through the array
while index < length
    user = users[index]

     # Get the user's name and age
    name = user[:name]
    age = user[:age]

    # Convert the name to lowercase
    name = name.downcase

    # Check if the name starts with "jimmy"
    if name.start_with?("jimmy")
        puts "My name is confidential"

    # Print the user's name and age
    else 
        puts "My name is #{name} and I am #{age} years old."
    end

    # Increment the index
    index += 1 
end

